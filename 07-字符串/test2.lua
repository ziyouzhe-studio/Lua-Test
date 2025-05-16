-- 字符串长度计算
--[[
在Lua中，要计算字符串的长度(即字符串的个数),你可以使用string.len函数或者
utf8.len函数
包含中文一般使用utf8.len， string.len函数用于计算只包含ASCII字符串的长度
]]

local myString = "Hello, RUNOOB!"
-- 计算字符串的长度(字符个数)
local length = string.len(myString)
print(length) -- 输出1

-- 以上实例中myString字符串只包含ASCII字符，因此string.len函数可以准确的返回字符串的长度。
-- 包含中文的字符串使用utf8.len函数

local myString = "Hello, 世界!"

-- 计算字符串的长度(字符个数)
local length1 = utf8.len(myString)
print(length1) -- 输出10

-- strintg.len函数会导致结果不正确
local length2 = string.len(myString)
print(length2) -- 输出14