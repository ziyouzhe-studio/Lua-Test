-- 多维数组
-- 多维数组即数组中包含数组或一维数组的索引键对应一个数组

-- 初始化数组
array = {}
for i = 1, 3 do
    array[i] = {}
    for j = 1, 3 do
        array[i] [j] = i * j
    end
end

-- 访问数组
for i = 1, 3 do
    for j = 1, 3 do
        print(array[i][j])
    end
end