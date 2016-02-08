puts "First enter the length of sequence"
puts "P.S.: Данная последовательность очень быстро возрастает, так что не советуем вводить большие числа"
n = $stdin.readline.to_i

arr = ['1', '11']
i=2;
while i <= n
  len = 1;
  str = arr[i-1]
  arr[i] = ''
  str.split('').each_with_index do |sym, ind| 
    if ind > 0
      if str[ind] != str[ind-1]
        arr[i] += "#{len}#{str[ind-1]}"
        len=1
      else len+=1;
      end
    end
    arr[i] += "#{len}#{str[ind]}" if ind == str.length-1
  end
  i+=1;
end 

arr.each {|item| puts item}
