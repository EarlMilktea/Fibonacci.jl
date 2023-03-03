using Fibonacci
using Documenter
using Test

const TESTCASES = (
    (-2, -1),
    (-1, 1),
    (0, 0),
    (1, 1),
    (2, 1),
    (3, 2),
    (10, 55),
    (40, 102334155),
    (100, 354224848179261915075),
)

@testset "Fibonacci.jl" begin
    for (n, v) ∈ TESTCASES
        @test fibonacci(n) == v
    end
    doctest(Fibonacci; manual=false)
end
