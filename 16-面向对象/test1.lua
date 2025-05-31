-- 定义Person类
Person = {name = "", age = 0}

-- Person的构造函数
function Person:new(name, age)
    local boj ={} -- 创建一个新的表作为对象
    setmetatable(obj, self) -- 设置元表，使其成为Person实例
    self.__index = self -- 设置索引元方法，指向Person
    obj.name = name
    obj.age = age
    return obj
end

-- 添加方法:打印个人信息
function Person:introduce()
    print("My name is " .. self.name .. "and I am " .. self.age .. "years.old.")
end