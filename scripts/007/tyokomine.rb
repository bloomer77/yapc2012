# encoding:utf-8

#$BAG?t$N@-<A;H$C$?%P!<%8%g%s!"K\4V$5$s$N;29M(B
require 'prime'
max = 10001
primes = Array.new
primes << 2
primes << 3
primes << 5
n=0
loop do
  if primes.size > 10001
    break
  end
  n+=1
  prime = 6*n+1
  if prime.prime?
    primes << prime
  end
  prime +=4
  if prime.prime?
    primes << prime
  end
end
p primes[max-1]


#$B%(%i%H%9%F%M%9$N$U$k$$%P!<%8%g%s!J$a$A$cCY$$!K(B
#num$B$^$G$NAG?t$+$i$J$k$NG[Ns$r:n@.(B
#def create_prime(num)
#  nums = Array.new
#  (2..num).each do |i|
#    nums << i
#  end
#  prime = Array.new
#  loop do 
#    i = nums[0]
#    prime << i
#    (i..num).each do |j|
#      if j%i == 0
#       nums.delete(j)
#      end
#      if nums[nums.size-1] < i*i
#        return prime+nums
#      end
#    end
#  end
#end
#p create_prime(10000)
#n = 10001
#limit = n*Math::log(n)+n*Math::log(Math::log(n))
#p limit
#primes = create_prime(limit)
#p primes
#p primes[n]


