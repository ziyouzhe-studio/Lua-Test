-- boolean(布尔)
--[[
boolean 类型只有两个类型: true(真) 和 false(假),
Lua把false和nil看作是false,其他的头看作为true，数字0也是true
--]]

print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false")
end

if 0 then
    print("数字 0 是 true")
else
    print("数字 0 为 false")
end