--[[
封装
封装通常通过将数据和方法封装自一个表中实现。
可以通过控制表的访问权限来模拟封装
例如使用metamethods来限制外部访问
]]

-- 定义一个"类"(实际上是一个表)
Person = {}

-- 添加封装:隐藏属性
function Person:new(name, age)
    local obj = {}
    setmetatable(obj, self)
    self.__index = self
    obj.name = name
    obj.age = age
    return obj
end

function Person:setName(name)
    self.name = name -- 提供方法来修改name
end

function Person:getName()
    return self.name -- 提供方法来获取name
end