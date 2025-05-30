--[[
当我们为 table a 并设置元素，然后将 a 赋值给 b，则 a 与 b 都指向同一个内存。如果 a 设置为 nil ，则 b 同样能访问 table 的元素。如果没有指定的变量指向a，Lua的垃圾回收机制会清理相对应的内存。
以下实例演示了以上的描述情况：
]]

-- 简单的table
mytable = {}
print("mytable 的类型是", type(mytable))

mytable[1] = "Lua"
mytable["wow"] = "修改前"
print("mytable 索引为1的元素是", mytable[1])
print("mytable 索引为wow的元素是", mytable["wow"])

-- alternatetable和mytable的是指同一个table
alternatetable = mytable

alternatetable["wow"] = "修改后"

print("alternatetable 索引为 1 的元素是 ", alternatetable[1])
print("alternatetable 索引为 wow 的元素是 ", alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- 释放变量
alternatetable = nil
print("alternatetable 是 ", alternatetable)

-- mytable 仍然可以访问
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

mytable = nil
print("mytable 是 ", mytable)