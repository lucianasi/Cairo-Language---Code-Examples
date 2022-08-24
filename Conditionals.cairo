# The function `abs_eq` should return 1 if its inputs
# are equal or differ only in sign and 0 otherwise.
# Its current implementation is incorrect.
#
# 1. Click on "Run" to see the where it fails.
# 2. Fix the body of `abs_eq`, so that the
#    program terminates successfully.

# Returns 1 if |x| = |y| (that is, x = y or x = -y),
# 0 otherwise.
%builtins output

func abs_eq(x : felt, y : felt) -> (bit : felt):
    #let (temp) = x + y
    if (x + y) == 0:
        return (bit=1)
    end
    if x == y:
        return (bit=1)
    else:
        return (bit=0)
    end
end

func main{output_ptr : felt*}():
    let (bit) = abs_eq(2, -2)
    assert bit = 1

    let (bit) = abs_eq(2, 3)
    assert bit = 0

    let (bit) = abs_eq(2, 2)
    assert bit = 1
    
    return ()
end
