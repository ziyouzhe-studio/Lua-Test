function foo()
    print("协同程序foo开始执行")
    local value = coroutine.yield("暂停foo执行")
    print("协同程序foo恢复执行，传入值为：" .. tostring(value))
    print("协同程序fool结束执行")
end

-- 创建协同程序
local co = coroutine.create(foo)

-- 启动协同程序
local status, result = coroutine.resume(co)
print(result) -- 输出：暂停foo的执行

-- 恢复协同程序的执行，并传入一个值
status, result = coroutine.resume(co, 42)
print(result)