$out = Join-Path $PSScriptRoot "..\energy\runs.csv"
$idle = 30
$repeats = 5
$o3batch = 10

"run,variant,count,start,end,seconds" | Out-File -Encoding utf8 $out

function Run-Variant($r, $name, $count, $cmd) {
    $s = Get-Date
    wsl -d Ubuntu-22.04 --cd /home/cer/lab bash -c $cmd | Out-Null
    $e = Get-Date
    $line = "{0},{1},{2},{3},{4},{5}" -f $r, $name, $count, $s.ToString("HH:mm:ss.fff"), $e.ToString("HH:mm:ss.fff"), [math]::Round(($e - $s).TotalSeconds, 3)
    Add-Content $out $line
    Write-Host $line
}

wsl -d Ubuntu-22.04 -- true
Write-Host "idle $idle s"
Start-Sleep $idle

for ($r = 1; $r -le $repeats; $r++) {
    Run-Variant $r "O0" 1 "./lab_O0"
    Start-Sleep $idle
    Run-Variant $r "O3" $o3batch "for i in $((1..$o3batch) -join ' '); do ./lab_O3; done"
    Start-Sleep $idle
}

Write-Host "done"
