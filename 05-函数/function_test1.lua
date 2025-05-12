-- 实例
-- 定义函数max(),参数为num1,num2, 用于比较两个值的大小，并返回最大值
function max(num1, num2)
    if (num1 > num2) then
        result = num1;
    else
        result = num2;
    end

    return result;
end

-- 调用函数
print("两值比较最大值为", max(10,4))
print("两值比较最大值为", max(5,6))