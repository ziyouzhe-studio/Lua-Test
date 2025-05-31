-- coroutine_test.lua文件
-- 创建一个新的协同程序对象co,其中协同程序函数打印传入的参数i
co = coroutine.create(
    function (i)
        print(i)
    end
)

-- 使用coroutine.resume启动协同程序co的执行，并传入参数1。协同程序开始执行，打印输出为1
coroutine.resume(co, 1) -- 1

-- 通过coroutine.status检查协同程序co的状态，输出为dead，表示协同程序已经开始执行完毕
print(coroutine.status(co)) -- dead

print("------")

-- 使用coroutine.wrap创建一个协同程序包装器，将协同程序函数转换为一个可直接调用的函数对象
co = coroutine.wrap(function (i)
    print(i);
end)

co(1)

print("------")

--[[
创建另一个协同程序对象co2，其中的协同程序函数通过循环打印数字1到10，在循环到3的时候输出当前协同程序的状态和正在运行的线程
]]
co2 = coroutine.create(function ()
    for i=1, 10 do
        print(i)
        if i == 3 then
            print(coroutine.status(co2)) -- running
            print(coroutine.running()) -- thread:xxxxx
        end
        coroutine.yield()
    end
end)

-- 连续调用coroutine.resume启动协同程序co2的执行
coroutine.resume(co2) -- 1
coroutine.resume(co2) -- 2
coroutine.resume(co2) -- 3

-- 通过coroutine.status检查协同程序co的状态，输出为dead，表示协同程序已经开始执行完毕
print(coroutine.status(co2)) -- supended
print(coroutine.running())
print("------")

--[[
coroutine.running可以看出来，coroutine在底层实现就是一个线程
当create一个coroutine的时候就是在新线程中注册了一个事件
当使用resume触发事件的时候，create的coroutine函数就被执行了，当遇到yield的时候就代表挂起当前线程，等候再次resume触发事件
]]