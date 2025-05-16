-- 关系运算符
a = 21
b = 10

if (a == b)
then
    print("Line 1 - 等于a")
else
    print("Line 1 - a 不等于 b")
end

if(a ~= b)
then
    print("Line 2 -a 不等于 b")
else
    print("Line 2 -a 等于 b")
end

if (a < b)
then
    print("Line 3 - a 小于b")
else
    print("Line 3 -a 大于等于b")
end

if (a > b)
then
    print("Line 4 - a 大于")
else
    print("Line 5 -a 小于等于b")
end

-- 修改a和b的值
a = 5
b = 20
if (a <= b)
then
    print("Line 5 -a 小于等于b")
end

if (b >= a)
then
    print("Line 6 -b大于等于a")
end