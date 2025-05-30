-- 为表添加操作符
-- 自定义计算表中最大键值函数 table_maxn，即返回表最大键值
function table_maxn(t)
    local mn = 0
    for k, _ in ipairs(t) do
        if type(k) == "number" and k > mn then
            mn = k
        end
    end
    return mn
end

-- 两表相加操作
mytable = setmetatable({1, 2, 3}, {
    __add = function (mytable, newtable)
        local max_key_mytable = table_maxn(mytable)
        for i = 1, table_maxn(newtable) do
            table.insert(mytable, max_key_mytable + i, newtable[i])
        end
        return mytable
    end
})

secondtable = {4, 5, 6}

mytable = mytable + secondtable

for k, v in pairs(mytable) do
    print(k, v)
end