-- 可以给加载的模块定义一个别名
-- test_module1.lua文件
-- module模块为上文提到的module
-- 别名变量m
local m = require("11-模块和包.module")

print(m.constant)

m.func3()