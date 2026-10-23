import csv, sys, statistics as st

log, runs_path, out_csv, out_svg = sys.argv[1:5]
T_PROG = {'O0': 4.728, 'O3': 0.48605}

def t(s):
    h, m, rest = s.split(':')
    return int(h) * 3600 + int(m) * 60 + float(rest)

rows = list(csv.reader(open(log, encoding='utf-8-sig')))
hdr = rows[0]
PKG = hdr.index('Повна споживана потужність ЦП [W]')
IA = hdr.index('Споживана потужність ядер IA [W]')
GPU = hdr.index('GPU Споживана потужність [W]')
data = []
for r in rows[1:]:
    if r and r[0][:1].isdigit():
        try:
            data.append((t(r[1]), float(r[PKG]), float(r[IA]), float(r[GPU] or 0)))
        except ValueError:
            pass

runs = []
for line in open(runs_path, encoding='utf-8-sig').read().splitlines()[1:]:
    p = line.split(',')
    runs.append((int(p[0]), p[1], int(p[2]), t(p[3]), t(p[4])))

def integ(a, b, col):
    e = 0.0
    for (t0, *v0), (t1, *v1) in zip(data, data[1:]):
        lo, hi = max(t0, a), min(t1, b)
        if hi > lo:
            e += v1[col] * (hi - lo)
    return e

def med(a, b, col):
    return st.median([d[col + 1] for d in data if a <= d[0] <= b])

res = []
for r, v, cnt, s, e in runs:
    dur = e - s
    p_idle = med(s - 22, s - 2, 0)
    g_idle = med(s - 22, s - 2, 2)
    E_pkg = integ(s, e, 0)
    E_ia = integ(s, e, 1)
    E_gpu = integ(s, e, 2)
    E_sys = E_pkg + E_gpu
    E_prog = E_pkg - p_idle * dur
    E_prog_sys = E_sys - (p_idle + g_idle) * dur
    t_prog = T_PROG[v] * cnt
    E_prog_corr = E_prog * t_prog / dur
    res.append(dict(run=r, v=v, cnt=cnt, dur=dur, p_idle=p_idle, p_avg=E_pkg / dur,
                    E_pkg=E_pkg, E_ia=E_ia, E_sys=E_sys, E_prog=E_prog, E_prog_sys=E_prog_sys,
                    E_pkg1=E_pkg / cnt, E_prog1=E_prog / cnt, E_corr1=E_prog_corr / cnt))

keys = ['dur', 'p_idle', 'p_avg', 'E_pkg', 'E_ia', 'E_sys', 'E_prog', 'E_prog_sys', 'E_pkg1', 'E_prog1', 'E_corr1']
with open(out_csv, 'w', encoding='utf-8-sig', newline='') as f:
    w = csv.writer(f, delimiter=';')
    w.writerow(['run', 'variant', 'count'] + keys)
    for x in res:
        w.writerow([x['run'], x['v'], x['cnt']] + [f"{x[k]:.3f}".replace('.', ',') for k in keys])
    for v in ('O0', 'O3'):
        xs = [x for x in res if x['v'] == v]
        w.writerow(['mean', v, xs[0]['cnt']] + [f"{st.mean(x[k] for x in xs):.3f}".replace('.', ',') for k in keys])
        w.writerow(['stdev', v, xs[0]['cnt']] + [f"{st.stdev(x[k] for x in xs):.3f}".replace('.', ',') for k in keys])

for v in ('O0', 'O3'):
    xs = [x for x in res if x['v'] == v]
    print(v, '  '.join(f"{k}={st.mean(x[k] for x in xs):.2f}±{st.stdev(x[k] for x in xs):.2f}" for k in keys))
print('gpu mean during runs', st.mean(d[3] for d in data))
print('overall idle median', st.median(d[1] for d in data if not any(s - 1 <= d[0] <= e + 3 for _, _, _, s, e in runs)))

t0 = data[0][0]
W, H = 1100, 380
ml, mr, mt, mb = 60, 20, 50, 50
pw, ph = W - ml - mr, H - mt - mb
tmax = data[-1][0] - t0
pmax = 50
X = lambda tt: ml + (tt - t0) / tmax * pw
Y = lambda p: mt + ph - p / pmax * ph
c_o0, c_o3, ink, ink2, grid = '#2a78d6', '#eb6834', '#0b0b0b', '#52514e', '#e4e3df'
svg = [f'<svg xmlns="http://www.w3.org/2000/svg" width="{W}" height="{H}" viewBox="0 0 {W} {H}" font-family="Segoe UI, Arial, sans-serif">',
       f'<rect width="{W}" height="{H}" fill="#fcfcfb"/>',
       f'<text x="{ml}" y="22" font-size="15" font-weight="600" fill="{ink}">Споживана потужність ЦП (CPU Package), Вт</text>',
       f'<text x="{ml}" y="40" font-size="12" fill="{ink2}">HWiNFO64, крок ~200 мс; смуги — інтервали виконання програми</text>']
for p in range(0, pmax + 1, 10):
    svg.append(f'<line x1="{ml}" x2="{ml+pw}" y1="{Y(p):.1f}" y2="{Y(p):.1f}" stroke="{grid}" stroke-width="1"/>')
    svg.append(f'<text x="{ml-8}" y="{Y(p)+4:.1f}" font-size="11" fill="{ink2}" text-anchor="end">{p}</text>')
for sec in range(0, int(tmax) + 1, 60):
    svg.append(f'<text x="{X(t0+sec):.1f}" y="{mt+ph+18}" font-size="11" fill="{ink2}" text-anchor="middle">{sec} с</text>')
for r, v, cnt, s, e in runs:
    c = c_o0 if v == 'O0' else c_o3
    svg.append(f'<rect x="{X(s):.1f}" y="{mt}" width="{X(e)-X(s):.1f}" height="{ph}" fill="{c}" fill-opacity="0.18"/>')
    svg.append(f'<text x="{(X(s)+X(e))/2:.1f}" y="{mt+12}" font-size="10" fill="{ink2}" text-anchor="middle">{v}</text>')
pts = ' '.join(f'{X(d[0]):.1f},{Y(d[1]):.1f}' for d in data)
svg.append(f'<polyline points="{pts}" fill="none" stroke="{ink}" stroke-width="1.5" stroke-linejoin="round"/>')
svg.append(f'<line x1="{ml}" x2="{ml+pw}" y1="{mt+ph}" y2="{mt+ph}" stroke="{ink2}" stroke-width="1"/>')
lx = ml + pw - 330
svg.append(f'<line x1="{lx}" x2="{lx+20}" y1="{H-14}" y2="{H-14}" stroke="{ink}" stroke-width="2"/><text x="{lx+26}" y="{H-10}" font-size="12" fill="{ink}">потужність</text>')
svg.append(f'<rect x="{lx+110}" y="{H-21}" width="14" height="14" rx="2" fill="{c_o0}" fill-opacity="0.35"/><text x="{lx+130}" y="{H-10}" font-size="12" fill="{ink}">O0 (1 запуск)</text>')
svg.append(f'<rect x="{lx+225}" y="{H-21}" width="14" height="14" rx="2" fill="{c_o3}" fill-opacity="0.35"/><text x="{lx+245}" y="{H-10}" font-size="12" fill="{ink}">O3 (10 запусків)</text>')
svg.append('</svg>')
open(out_svg, 'w', encoding='utf-8').write('\n'.join(svg))
