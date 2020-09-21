=begin
问题描述
一条报文包含字母A-Z，使用下面的字母-数字映射进行编码加密
 'A' -> 1
 'B' -> 2
 ...
 'Z' -> 26
给一串包含数字的加密报文，求有多少种解码方式。举个例子，已知报文"12",它可以解码为AB(1 2),也可以是L (12) 所以解码方式有2种。
输入的从标准输入（stdin）
多行字符串，每行表示一个加密报文。一个报文长度不会超过5000.
输出直接输出到标准输出（stdout）
对输入的每个加密报文，输出一行包含一个整数的结果，该整数是对应加密报文可能的解密方式数量。
测试样例
输入： 121212 ，输出：13
输入： 0 ，输出：0
文件名lab3.rb，代码尽量简洁，运行时间不超过2秒。
用git提交到master分枝
=end

def count(s)
    s.strip!
    s.reverse!
    ans = Array.new(15, 0)
    ans[-1] = 1
    ans[0] = case s[0].to_i
    when 0 then 0
    else 1
    end
    i = 1
    for i in 1...(s.length) do
        n = s[i].to_i
        if n == 0
            ans[i] = 0
        elsif n == 1 || (n == 2 && s[i - 1].to_i <= 6)
            ans[i] = ans[i - 2] + ans[i - 1]
        else
            ans[i] = ans[i - 1]
        end
    end
    return ans[i]
end

s = gets
while s != nil
    puts count(s)
    s = gets
end