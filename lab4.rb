keys = gets.chomp!.split(" ")
values = gets.split(" ")
ans = Hash.new
keys.zip(values) {|x, y| ans[x] = y }
puts ans.to_s