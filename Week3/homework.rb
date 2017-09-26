# UCLN
ArrayLength = 5
NumberRange = 100
$arr = []
$rd = Random.new
$i = 0
while $i < ArrayLength
  newNumber = $rd.rand(NumberRange)
  newNumber = $rd.rand(NumberRange) while $arr.include?(newNumber) == true || newNumber == 0
  $arr.push(newNumber)
  $i += 1
end
puts 'Phan tu mang:'
puts $arr
$j = $arr.min
while $j != 1
  count = 0
  for $i in 0..ArrayLength - 1
    count += 1 if $arr[$i] % $j == 0
  end
  if count == ArrayLength
    puts 'UCLN:'
    puts $j
    break
  else
    $j -= 1
  end
end
puts "UCLN:\n1" if $j == 1
# BCNN
$j = $arr.max
loop do
  count = 0
  for $i in 0..ArrayLength - 1
    count += 1 if $j % $arr[$i] == 0
  end
  if count == ArrayLength
    puts 'BCNN:'
    puts $j
    break
  else
    $j += $arr.max
  end
end
