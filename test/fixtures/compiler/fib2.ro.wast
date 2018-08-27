(module
  (memory 0 1)
  (export "fib" (func $test::fib))
  (export "test" (func $test::test))
  (func $test::fibo (param $n i32) (param $x1 i32) (param $x2 i32) (result i32)
    (if $a_wild_if (result i32) (i32.gt_s (get_local $n) (i32.const 0))
      (then
        (call $test::fibo (i32.sub (get_local $n) (i32.const 1)) (get_local $x2) (i32.add (get_local $x1) (get_local $x2)))
      )
      (else
        (get_local $x1)
      )
    )
  )
  (func $test::fib (param $n i32) (result i32)
    (call $test::fibo (get_local $n) (i32.const 0) (i32.const 1))
  )
  (func $test::test (result i32)
    (call $test::fib (i32.const 46))
  )
)
