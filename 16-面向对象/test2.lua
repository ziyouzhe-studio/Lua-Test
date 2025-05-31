-- 以下简单的类包含了三个属性:area, length和breadth, printArea方法用于打印计算结果

-- 定义矩形类
Rectangle = {area=0, length = 0, breadth = 0}

-- 创建矩形对象的构造函数
function Rectangle:new(o, length, breadth)
    o = o or {} -- 如果未传入对象，创建一个新的空表
    setmetatble(o, self) -- 设置元素，使其继承Rectangle的方法
    self.__index = self -- 确保在访问时能找到方法和属性
    o.length = length or 0 -- 设置长度为，默认为0
    o.breadth = breadth or 0 --设置宽度，默认为0
    o.area = o.length * o.breadth -- 计算面积
    return o
end

-- 打印矩形的面积
function Rectangle:printArea()
    print("矩形面积为 ", self.area)
end