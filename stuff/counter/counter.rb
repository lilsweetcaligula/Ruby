=begin
  Counter class, similar to Python's: https://docs.python.org/3/library/collections.html#collections.Counter
  
  Please, be advised, as of 16 March, 2017, it has not been tested yet. Tests will be available shortly.
=end

class Counter < Hash
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
 
  #
  # Unsupported methods.
  #
  
  public
  
  def <(other)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def <=(other)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def ==(other)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def >(other)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def >=(other)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def any?(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def assoc(obj)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def clear
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def compact
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def compact!
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def compare_by_identity
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def compare_by_identity?
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def default=(key=nil)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def default
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def default_proc=(obj)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def default_proc
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def delete(key, &block)
   raise NotImplementedError.new("Method currently not supported.") 
  end
  
  def delete_if(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def dig(key, *keys)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def each(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def each_pair(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def each_key(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def each_value(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def empty?
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def eql?(other)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def fetch(key, default=nil)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def fetch_values(key, *keys)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def flatten(level=nil)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def has_key?(key)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def has_value?(value)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def invert
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def keep_if(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def key(value)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def key?(key)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def member?(key)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def merge(other, &block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def merge!(other, &block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def rassoc(obj)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def rehash
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def reject(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def reject!(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def replace(other)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def select(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def select!(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def shift
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def store(key, value)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def to_a
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def to_h
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def to_hash
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def to_proc
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def to_s
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def transform_values(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def transform_values!(&block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def update(other, &block)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def value?(value)
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def values
    raise NotImplementedError.new("Method currently not supported.")
  end
  
  def values_at(key, *keys)
    raise NotImplementedError.new("Method currently not supported.")
  end
end
