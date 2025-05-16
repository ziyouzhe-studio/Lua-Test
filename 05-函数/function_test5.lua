-- select
--[[
通常遍历变长参数的时候只需要使用{...},然而变长参数可能包含一些nill,
那么可以用select函数来访问变长参数: select('#',...)或者select(n,...)
]]

-- function f(...)
--     a = select(3,...)  -->从第三个位置开始，变量 a 对应右边变量列表的第一个参数
--     print (a)
--     print (select(3,...)) -->打印所有列表参数
-- end

-- f(0,1,2,3,4,5)

-- function f(...)
--     a = select(3,...) -- 从三个位置开始，变量a对应右边变量列表的第一个参数
--     print(a)
--     print(select(3,...)) -- 打印所有列表参数
-- end

-- f(0,1,2,3,4,5)

do
    function foo(...)
        for i = 1, select('#', ...)do --> 获取参数总合
            local arg = select(i, ...); --> 读取参数,arg对应的是变量右边列表的第一个参数
            print("arg",arg);
        end
    end
    foo(1,2,3,4);
end