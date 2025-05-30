-- Table最大值
--[[
table.maxn 在 Lua5.2 之后该方法已经不存在了，我们定义了 table_maxn 方法来实现。
以下实例演示了如何获取 table 中的最大值：
]]
function table_maxn(t)
    local mn = nil;
    for k, v in pairs(t)do
        if(mn==nil)then
            mn=v
        end
        if  mn < v then
            mn = v
        end
    end
    return mn
end

tbl = {[1] = 2, [2] = 6, [3] = 34, [26] = 5}
print("tbl最大值：", table_maxn(tbl))
print("tbl长度", #tbl)