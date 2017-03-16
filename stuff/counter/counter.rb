=begin
  Counter class, similar to Python's: https://docs.python.org/3/library/collections.html#collections.Counter
  
  Please, be advised, as of 16 March, 2017, it has not been tested yet. Tests will be available shortly.
=end

class Counter
  def initialize(enum=nil)
    @table = Hash.new(0)    
    if !enum.nil?
      if Hash === enum        
        if validate_hash_format(enum)
          enum.each { |key, value| @table[key] = value }
        else
          raise ArgumentError.new("table must be of format: key: Object => value: Integer")
        end
      elsif !(Enumerable === enum)
        raise ArgumentError.new("value must be enumerable")
      else
        enum.group_by { |x| x }.each { |x, group| @table[x] = group.size }
      end
    end
  end
  
  def entries
    @table.entries
  end
  
  def most_common(n=@table.size)
    @table.each_entry.sort_by { |x, count| count }.reverse.to_a
  end
  
  def subtract(other)
    if !(self === other)
      raise ArgumentError.new("value must be a Counter")
    end
    
    Counter.new((@table.keys | other.keys).map { |key|
      [key, [@table.include?(key) ? @table[key] : 0, other.include?(key) ? other[key] : 0].reduce(:-)]
    }.to_h)
  end
  
  def [](key)
    @table[key]
  end
  
  def []=(key, value)
    @table[key] = value
  end
  
  def include?(key)
    @table.include?(key)
  end
  
  def keys
    @table.keys
  end
  
  def values
    @table.values
  end
  
  def inspect
    @table.inspect
  end
  
  def to_s
    @table.to_s
  end

  def hash
    @table.hash
  end
  
  def size
    @table.size
  end
  
  def length
    @table.length
  end
  
  
  private
    
  def validate_hash_format(hash)
    Hash === hash && hash.values.all? { |x| Integer === x }
  end
end
