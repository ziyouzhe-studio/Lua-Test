-- 字符串截取使用sub()方法
-- string.sub()用于截取字符串，原型为:
--[[
string.sub(s, i[, j])

s: 要截取的字符串
i: 截取开始位置
j: 截取结束位置，默认为-1, 最后一个字符
]]

-- 字符串
local sourcestr = "prefix--runoobgoogletaobao--suffix"
print("\n原始字符串", string.format("%q", sourcestr))

-- 截取部分,第4个到第15个
local first_sub = string.sub(sourcestr, 4, 15)
print("\n第一次截取", string.format("%q", first_sub))

-- 取字符串前缀,第1个到第8个
local second_sub = string.sub(sourcestr, 1, 8)
print("\n 第二次截取", string.format("%q", second_sub))

-- 截取最后10个
local third_sub = string.sub(sourcestr, -10)
print("\n第三次截取", string.format("%q",third_sub))

-- 索引越界，输出原始字符串
local fourth_sub = string.sub(sourcestr, -100)
print("\n第四次截取", string.format("%q", fourth_sub))