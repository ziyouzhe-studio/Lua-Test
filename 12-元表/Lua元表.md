# Lua元表(Metatable)
在Lua table中我们可以访问对应的key来得到value值，但是却无法对两个table进行操作(比如相加)。
因此Lua提供了元表(Metatable)，允许我们改变table的行为，每个行为关联了对应的元方法。
例如，使用元素我们可以定义Lua如何计算两个table的相加操作a+b。
当Lua试图对两个表进行相加时，先检查两者之间是否有元素，之后检查是否有一个叫__add的字段，若找到，则调用对应的值。__add等即时字段，其对应的值(往往是一个函数或是table)就是"元方法"。

有两个很重要的函数处理元表：
* setmetatable(table,metatable):对指定table设置元表(metatable)中存在__metatable键值，setmetatable会失败。
* getmetatable(table):返回对象的元表。

一下演示了如何对指定的表设置元表
~~~lua
mytable = {} -- 普通表
mymetatable = {} -- 元表
setmetatable(mytable,mymetatable) -- 把mymetatable设置为mytable的元表
~~~