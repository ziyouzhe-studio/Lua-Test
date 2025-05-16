-- 其他运算符
-- 操作符	描述	实例
-- ..	连接两个字符串	a..b ，其中 a 为 "Hello " ， b 为 "World", 输出结果为 "Hello World"。
-- #	一元运算符，返回字符串或表的长度。	#"Hello" 返回 5 - 条件为false

a = "Hello"
b = "World"
print("连接字符串a和b", a .. b)
print("b字符串长度", #b)
print("字符串Test长度",#"Test")
print("菜鸟教程长度", #"www.runoob.com")