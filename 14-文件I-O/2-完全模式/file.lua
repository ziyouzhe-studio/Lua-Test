--[[
完全模式
通常我们需要在同一时间处理多个文件。我们需要使用file:function_name来代替io.function_name方法。
]]

-- 以只读方式打开文件
file = io.open("test.lua", "r")

-- 输出文件第一行
print(file:read())

-- 关闭打开文件
file:close()

-- 衣附加的方式打开只写文件
file = io.open("test.lua", "a")

-- 在文件最后一行添加Lua注释
file:write("--test")

-- 关闭打开的文件
file:close()