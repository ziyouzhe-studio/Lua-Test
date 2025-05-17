-- 修改数组中的元素

-- 创建数组
local myArray = {10, 20, 30, 40, 50}

-- 修改数组中的元素
myArray[2] = 25

-- 添加新元素到数组末尾
myArray[#myArray+1] = 60

-- 删除某一个数组
table.remove(myArray, 3)

-- 循环遍历数组
for i = 1, #myArray do
    print(myArray[i])
end-- 修改数组中的元素