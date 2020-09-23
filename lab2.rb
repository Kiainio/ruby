=begin
编写一个程序，给一个正整数，输出其二进制有多少个1，代码尽量简洁
输入的从标准输入（stdin）
可用gets语句读入一个字符串
输出直接输出到标准输出（stdout）
可用puts语句输出
输入输出举例
输入：100，输出：3
输入：1234567890，输出：12
文件名lab2.rb
用git提交到master分枝
=end

count = 0
s = gets
n = s.to_i
while n != 0
    if n % 2 == 1
        count += 1
    end
    n /= 2
end
puts count