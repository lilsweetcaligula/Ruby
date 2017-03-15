class SequenceSum
    def self.show_sequence(n)
        if n.negative?
            return "#{n}<0"
        end
        
        if n.zero?
            return "#{n}=0"
        end
    
        vals = (0..n).to_a
        res  = vals.reduce(:+)
    
        return "#{vals.join("+")} = #{res}"
    end
end
