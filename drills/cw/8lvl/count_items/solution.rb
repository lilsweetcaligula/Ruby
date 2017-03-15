# Using the Enumerable#count method would be too easy, c'mon.
#

def count(list, &block)
    list.select(&block).size
end
