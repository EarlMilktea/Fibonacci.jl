module Fibonacci

export fibonacci

"""
    fibonacci(n)

Compute the nth Fibonacci number, as `BigInt`.

# Examples
```jldoctest
julia> using Fibonacci

julia> fibonacci(1)
1

julia> fibonacci(2)
1

julia> fibonacci(3)
2
```
"""
function fibonacci(n::Integer)
    v0, v1 = big(0), big(1)
    if n < 0
        for _ ∈ -1:-1:n
            v0, v1 = v1 - v0, v0
        end
        v0
    elseif n == 0
        v0
    elseif n == 1
        v1
    else
        for _ ∈ 2:n
            v1, v0 = v0 + v1, v1
        end
        v1
    end
end

end
