# Lua table (表)
* table是Lua的一种数据结构用来帮助我们创建不同的数据类型，如：数组、字典等
* Lua table使用关联型数组，你可以用任意类型的值来作为数组的索引，但这个值不能是nil
* Lua table是不固定大小的，你可以根据自己需要进行扩容
* Lua也是通过table来解决模块(module)、包(package)、对象(Object)的。例如string.format表示使用"format"来索引table string

# table(表)的构造
构造器是创建和初始化表的一种表达式。表是lua特有的功能，功能强大。最简单的构造函数是{}，用来创建一个空表。
可以直接初始化数组：
~~~lua
-- 初始化
mytable = {}

-- 指定值
mytable[1] = "Lua"

-- 移除引用
mytable = nil
--lua垃圾回收会释放内存
~~~