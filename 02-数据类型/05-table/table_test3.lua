-- table 不会固定长度大小,有新数据添加table长度自动增长，没初始化table都是nil
-- table_test3.lua
a3 = {}
for i = 1, 10 do
    a3[i] = i
end

a3["key"] = "val"
print(a3["key"])
print(a3["none"])