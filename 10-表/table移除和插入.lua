-- table.concat连接

fruits = {"banana", "orange", "apple"}

-- 返回table连接的字符串
print("连接后的字符串", table.concat(fruits))

-- 指定连接的字符
print("连接后的字符串", table.concat(fruits, ","))

-- 指定索引来连接table
print("连接后的字符串", table.concat(fruits, ",", 2, 3))