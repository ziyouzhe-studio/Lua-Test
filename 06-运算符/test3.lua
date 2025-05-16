-- 逻辑运算符
-- 操作符	描述	实例
-- and	逻辑与操作符。 若 A 为 false，则返回 A，否则返回 B。	(A and B) 为 false。
-- or	逻辑或操作符。 若 A 为 true，则返回 A，否则返回 B。	(A or B) 为 true。
-- not	逻辑非操作符。与逻辑运算结果相反，如果条件为 true，逻辑非为 false。	not(A and B) 为 true。

a = true
b = true

if (a and b)
then
    print("a and b- 条件为true")
end

if (a or b)
then
    print("a or b - 条件为true")
end

print("-------分割线----------")

a = false
b = true

if (a and b)
then
    print("a and b - 条件为true")
else
    print("a and b - 条件为false")
end

if (not (a and b))
then
    print("not (a and b) - 条件为true")
else
    print("not (a and b) - 条件为false")
end