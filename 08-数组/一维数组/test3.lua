-- 可以使用整数索引来访问数组元素，如果指定的索引没有值返回nil。
-- 除此之外我们还可以使用负数为数组索引值

array = {}

for i = -2,2 do
    array[i] = i * 2
end

for i = -2,2 do
    print(array[i])
end