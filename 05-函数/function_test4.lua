-- 可变参数
-- Lua函数可以接受可变参数目的参数，和C语言类似，在函数参数列表使用三点...表示函数有可变的参数
-- function add(...)
--     local s = 0
--     for i, v in ipairs { ... } do --> {...} 表示一个由所有变长参数构成的数组
--         s = s + v
--     end
--     return s
-- end

-- print(add(3, 4, 5, 6, 7)) --->25

function average(...)
    result = 0
    local arg = { ... } -- arg为一个表,局部变量
    for i, v in ipairs(arg) do
        result = result + v
    end
    print("总共传入" .. #arg .. "个数")
    return result / #arg
end

print("平均值为", average(10, 5, 3, 4, 5, 6))
