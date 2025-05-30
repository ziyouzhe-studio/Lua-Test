-- sort()方法用于对Table进行排序
fruits = {"banana", "orange", "apple", "grapes"}

print("排序前")
for k, v in ipairs(fruits) do
    print(k, v)
end

table.sort(fruits)
print("排序后")
for k, v in ipairs(fruits) do
    print(k, v)
end