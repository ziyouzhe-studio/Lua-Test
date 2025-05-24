-- 一维数组
-- 一维数组是最简单的，其逻辑是线性表
-- 使用索引访问数组元素

-- 创建一个数组
local myArray = {10, 20, 30, 40, 50}

-- 访问数组元素
print(myArray[1]) -- 输出10
print(myArray[3]) -- 输出30

-- 计算数组的长度(即数组中元素的个数),你可以使用#操作符
local length = #myArray
print(length)

-- 一维数组可以使用for循环出数组中的元素
-- 循环遍历数组
for i = 1, #myArray do
    print(myArray[i])
end