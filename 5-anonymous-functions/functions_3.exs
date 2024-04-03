fizzbuzz = fn
  0, 0, _ -> IO.puts("Fizzbuzz")
  0, _, _ -> IO.puts("Fizz")
  _, 0, _ -> IO.puts("Buzz")
  _, _, c -> IO.puts(c)
end

fizzbuzz_remainder = fn
  n -> fizzbuzz.(rem(n,3), rem(n,5), n)
end

fizzbuzz_remainder.(10)
fizzbuzz_remainder.(11)
fizzbuzz_remainder.(12)
fizzbuzz_remainder.(13)
fizzbuzz_remainder.(14)
fizzbuzz_remainder.(15)
fizzbuzz_remainder.(16)
