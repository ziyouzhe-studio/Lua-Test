-- 定义矩形类
Rectangle = {area = 0, length = 0, breadth = 0}

-- 创建矩形对象的构造函数
function Rectangle:new(o, length, breadth)
    o = o or {} -- 如果未穿入对象，创建一个新的空表
    setmetatable(o, self) -- 设置元表，使其继承Rectangle的方法
    self.__index = self -- 确保在访问时能找到方法和属性
    o.length = length or o -- 设置长度，默认为0
    o.breadth = breadth or o -- 设置宽度，默认为0
    o.area = o.length * o.breadth -- 计算面积
    return o
end

-- 打印矩形的面积
function Rectangle:printArea()
    print("矩形面积为", self.area)
end

-- 运行实例
local rect1 = Rectangle:new(nil, 5 ,10) -- 创建一个长为5，宽为10的矩形
rect1:printArea() -- 输出"矩形面积为50"

local rect1 = Rectangle:new(nil, 7, 3) -- 创建一个长为7， 宽为3的矩形
rect1:printArea() -- 输出"矩形面积为21"