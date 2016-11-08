module MyEnumerable
    def select
        res = []
            self.each() do |t|
            if yield(t) == true
                res << t
            end
       end
       return res
    end
    
    def myReduce *args
        if args.size == 1
            res = 0
            self.each() do |t|
            res = res.send(args[0], t.strength)
            end
            res
        elsif
             res = args[0]
             self.each() do |t|
             res = res.send(args[1], t.strength)
             end
             res
        end
    end
    
    def maxmin *args
        min
        max
        if block_given?
            self.each do |x|
                x = max if (yield(max, x) == 1)
                x = min if (yield(min, x) == -1)
            end
            [min, max]
        else
             self.each do |x|
                x = max if x > max
                x = min if x < min
            end
            [min, max]
        end
    end
    
end
