-- lua默认只有一种number类型 -- double(双精度)类型(默认类型可以修改luaconf.h里的定义).
-- 一下几种写法都看作number
print(type(2))
print(type(2.2))
print(type(0.2))
print((type(2e+1)))
print(type(0.2e-1))
print(type(7.8263692594256e-06))