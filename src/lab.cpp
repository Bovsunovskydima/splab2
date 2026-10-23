#include <algorithm>
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <random>
#include <vector>

__attribute__((noinline)) void randomize(std::vector<float>& v, std::mt19937& gen)
{
    std::uniform_real_distribution<float> dist(0.0f, 1.0f);
    for (auto& x : v)
        x = dist(gen);
}

__attribute__((noinline)) void matmul(const std::vector<float>& a, const std::vector<float>& b,
                                      std::vector<float>& c, int n)
{
    for (int i = 0; i < n; i++)
        for (int k = 0; k < n; k++) {
            float t = a[i * n + k];
            for (int j = 0; j < n; j++)
                c[i * n + j] += t * b[k * n + j];
        }
}

__attribute__((noinline)) void saxpy(std::vector<float>& y, const std::vector<float>& x, float alpha)
{
    for (size_t i = 0; i < y.size(); i++)
        y[i] = alpha * x[i] + y[i];
}

__attribute__((noinline)) double length(const std::vector<float>& v)
{
    double s = 0.0;
    for (float x : v)
        s += x * x;
    return std::sqrt(s);
}

__attribute__((noinline)) void sort_values(std::vector<float>& v)
{
    std::sort(v.begin(), v.end());
}

int main(int argc, char** argv)
{
    int n = argc > 1 ? std::atoi(argv[1]) : 1024;
    int reps = argc > 2 ? std::atoi(argv[2]) : 200;
    size_t m = argc > 3 ? std::atol(argv[3]) : 5000000;

    std::mt19937 gen(42);
    std::vector<float> a(n * n), b(n * n), c(n * n, 0.0f);
    randomize(a, gen);
    randomize(b, gen);

    matmul(a, b, c, n);

    for (int r = 0; r < reps; r++)
        saxpy(c, a, 0.5f);

    double len = length(c);

    std::vector<float> data(m);
    randomize(data, gen);
    sort_values(data);

    std::cout << "n=" << n << " len=" << len << " median=" << data[m / 2] << "\n";
    return 0;
}
