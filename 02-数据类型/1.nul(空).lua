-- nil(空)
--[[
nil类型表一种没有任何有效值，他只有一个值 -- nil，
例如打印一个没有赋值的变量，便会输出一个nil值
]]
print(type(a)) -- nil

--[[对于全局变量和table，nil还有一个"删除"作用，
给全局变量或者table表里的便利赋一个nil值，等同于他们删掉
]]
tab1 = {key1 = "val1", key2 = "val2", "val3"}
for k ,v in pairs(tab1) do
    print(k .. "-" .. v)print(k .. "-")
end

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. "-" .. v)
end