--[[
函数重写
在Lua中，函数重写(也称为方法重写)指的是在继承过程，子类对父类中已有的方法的重新定义或替换
子类可以根据需要修改或扩展父类的方法行为
]]

-- 通过Animal类和一个继承自它的Dog类，展示如何重写方法

-- 定义动物类
Animal = {name = "Unknown"}

-- Animal类的构造函数
function Animal:new(o, name)
    o = o or {} -- 如果没有传入对象，则创造一个新的空表
    setmetatable(o, self) -- 设置元表，使其继承Anmial的方法
    self.__index = self -- 让对象可以访问Anmial的方法
    o.name = name or "Unknown" -- 设置名称，默认为"Unknown"
    return o
end

-- Animal类的方法:叫声
function Animal:speak()
    print(self.name .. "makes a sound.")
end

-- 定义狗类(Dog), 继承自Animal
Dog = Animal:new() -- 继承自Animal

-- 重写狗类的构造函数
function Dog:new(o, name, breed)
    o = o or {} -- 如果没有传入对象，则创建一个新对象
    setmetatable(o, self) -- 设置元表，使其继承Dog和Animal
    self.__index = self -- 让对象可以访问Dog的方法
    o.name = name or "Unknown"
    o.breed = breed or "Unknown"
    return o
end

-- 重写狗类的叫声方法(重写Animal的speak方法)
function Dog:speak()
    print(self.name .. "barks.")
end

-- 创建Animal对象
local animal = Animal:new(nil, "Generic Animal")
animal:speak() -- 输出"Generic Animal makes a sound"

-- 创建Dog对象
local dog = Dog:new(nil, "Buddy", "Golden Retriever")
dog:speak() -- 输出"Buddy barks"