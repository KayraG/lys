(module
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (memory $0 1)
 (data (i32.const 59) "\08\00\00\00t\00r\00u\00e")
 (data (i32.const 72) "\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 87) "\02\00\00\000")
 (data (i32.const 94) "\02\00\00\000")
 (data (i32.const 16) "\0c\00\00\00a\00s\00d\00a\00s\00d")
 (data (i32.const 33) "\10\00\00\00u\00t\00f\00 \00\ab\00\100\110\bb")
 (global $global$0 (mut i32) (i32.const 0))
 (global $global$1 (mut i64) (i64.const 0))
 (export "memory" (memory $0))
 (export "test_getMaxMemory" (func $0))
 (export "main" (func $1))
 (start $2)
 (func $0 (result i32)
  (global.get $global$0)
 )
 (func $1 (result i64)
  (global.get $global$1)
 )
 (func $2
  (global.set $global$0
   (i32.const 65536)
  )
  (global.set $global$1
   (i64.const 12884901904)
  )
 )
)
