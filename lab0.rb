def p(n)
    if n / 10 == 0
        return n
    else
        res = 1
        while n / 10 > 0
            if n % 10 == 0
                n /= 10
            else
                res *= n % 10
                n /= 10
            end
        end
    end
    return res
end

def mfp(m)
    sum = 0
    for i in 1..m
        sum += p(i)
    end
    i = 2
    res = 1
    while sum > 2
        if sum % i == 0
            sum /= i
            res = i
        else
			i += 1
        end
    end
    return res
end