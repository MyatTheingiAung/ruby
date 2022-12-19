row = 5
col = row *2 -1 
for i in 0..5
    for j in 0..col+1 do
        if j >= row - i and j <= row + i
            print "*"
        else
            print " "
        end
    end
    puts
end

for i in (row - 1).downto(0)
    for j in (col + 1).downto(0)
        if j >= row-i and j <= row+i
            print "*"
        else 
            print " "
        end
    end
    puts
end