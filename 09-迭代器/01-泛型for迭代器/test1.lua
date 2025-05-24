-- 泛型 for 在自己内部保存迭代函数，实际上它保存三个值：迭代函数、状态常量、控制变量

array = {"Google", "Runoob"}

for key, value in ipairs(array) do
    print(key, value)
end