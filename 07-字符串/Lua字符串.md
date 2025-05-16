# Lua字符串
字符串或串(string)是由数字、字母、下划线组成的一串字符
在lua中，字符串是一种基本的数据类型，用于存储文本数据
lua语言中字符串可以使用一下三种方式表示

* 单引号间的一串字符
~~~lua
local str1 = 'This is a string.'
local str2 = 'This is also a string.'
~~~

* 双引号间的一串字符
~~~lua
local str = "Hello"
str = str .. "World" -- 创建一个新的字符串并将其赋值给str
print(str) -- 输出 "Hello,World!"
~~~

* [[]] 间的一串字符
~~~lua
local multilineString = [[
This is a multiline string.
It can contain multiple lines of text.
No need for escape characters
]]

print(multilineString)
~~~