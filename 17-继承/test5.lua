--[[
抽象
抽象指的是简化复杂的事物，将不需要的细节隐藏。
虽然lua本身没有类的概念，但可以通过封装来表达到抽象的目的
]]

-- 只暴露接口，不暴露实现细节
function Person:showInfo()
    print("Name: " .. self.name)
    print("Age: " .. self.age)
end