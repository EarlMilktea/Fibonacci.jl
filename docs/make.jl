using Fibonacci
using Documenter

DocMeta.setdocmeta!(Fibonacci, :DocTestSetup, :(using Fibonacci); recursive=true)

makedocs(;
    modules=[Fibonacci],
    authors="SS",
    repo="https://github.com/EarlMilktea/Fibonacci.jl/blob/{commit}{path}#{line}",
    sitename="Fibonacci.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://EarlMilktea.github.io/Fibonacci.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/EarlMilktea/Fibonacci.jl",
    devbranch="main",
)
