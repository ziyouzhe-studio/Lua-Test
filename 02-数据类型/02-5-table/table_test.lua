-- table_test.lua
-- lua中的表(table)是一个"关联数组", 数组可以是数字或者字符串
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. ":" .. v)
end
