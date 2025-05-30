--[[
__newindex元方法

__newindex 元方法用来对表更新，__index则用来对表访问
当你给表的一个缺少的索引赋值，解释器就会查找__newindex 元方法：如果存在则调用这个函数而不进行赋值操作
]]

-- 以下实例演示了 __newindex 元方法的应用

mymetatable = {}
mytable = setmetatable({key1 = "value1"}, {__newindex = mymetatable})

print(mytable.key1)

mytable.newkey = "新值2"
print(mytable.newkey, mymetatable.newkey)

mytable.key1 = "新值1"
print(mytable.key1, mymetatable.key1)