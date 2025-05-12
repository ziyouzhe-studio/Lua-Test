--lua函数中，在return后列出来要返回的值的列表即可返回多值
function maximum(a)
    local mi = 1 -- 索引最大值
    local m = a[mi] -- 最大值
    for i,val in ipairs(a)do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end

print(maximum({8,10,23,12,5}))