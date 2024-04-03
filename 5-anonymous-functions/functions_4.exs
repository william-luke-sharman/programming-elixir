prefix = fn a -> fn b -> IO.puts("#{a} #{b}") end end

prefix.("Rosanna").("Kirk")
prefix.("Will").("Sharman")
