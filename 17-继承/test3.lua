--[[
Lua的多态性通过元表和方法重写实现。当不同类型的对象调用相同的方法，
Lua会根据对象的实际类型执行
]]

-- 定义一个"类"(实际上是一个表)
Person = {}

-- 为"类"添加一个构造函数
function Person:new(name, age)
    local obj = {} -- 创建一个新的表作为对象
    setmetatable(obj, self) -- 设置元表，表示它是Person类的实例
    self.__index = self -- 设置索引方法，指向Person
    obj.name = name
    obj.age = age
    return obj
end

-- 添加方法
function Person:greet()
    print("Hello, my name is " .. self.name)
end

-- 定义一个子类Student继承自Person
Student = Person:new()

-- 子类重写父类的方法
function Student:greet()
    print("Hi, I'm a student and my name is " .. self.name)
end

local person2 = Person:new("Charlie", 25)
local student2 = Student:new("David", 18)

-- 多态：不同类型的对象调用相同的方法
person2:greet() -- 输出"Hello, my name is Charlie"
student2:greet() -- 输出"Hi, I'my a student and my name is David
