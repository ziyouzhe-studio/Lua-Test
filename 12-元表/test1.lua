--[[
这是metatable最常用的键
当你通过键来访问table的时候，入果这个键没有值，那么lua就会寻找该table的metatable(假定有metatable)中的__index键。
如果__index包含一个表格，Lua会在表格中查找对应的键。

如果__index包含一个函数的话，Lua就会调用哪个函数，table和键会作为参数传递个函数
__index元方法查看表中元素是否存在，如果不存在，返回结果为nil；如果存在则由__index返回结果
]]

mytable = setmetatable({key1="value1"},
{
    __index = function (mytable, key)
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})

print(mytable.key1,mytable.key2)

--[[
实例解析：
1. mytable表赋值为{key1="value1"}
2. mytable设置了元表，元方法为__index
3. 在mytable中查找key1，如果找到，返回该元素，找不到则继续
4. 在mytable中查找key2，如果找到，返回metatablevalue，找不到则继续
5. 判断元表有没有__index方法，如果__index方法是一个函数，则调用该函数
6. 元方法中查看是否传入 "key2" 键的参数（mytable.key2已设置），如果传入 "key2" 参数返回 "metatablevalue"，否则返回 mytable 对应的键值。
]]

-- 可以将以上代码简写为
mytable = setmetatable({key1 = "value1"}, {__index = {key2 = "metatablevalue"}})
print(mytable.key1,mytable.key2)

-- 总结
--[[
Lua查找一个表元素，如下3步
1. 在表中查找，如果找到，返回该元素，找不到则继续
2. 判断该表是否有元表，如果没有元表，返回nil，有元表则继续
3. 判断元表有没有 __index方法，如果__index方法为nil，则返回nil;如果__index方法是一个表，则重复1、2、3;如果__index方法是一个函数，则返回该函数的返回值.
]]