# Of course, we could use the Enumerable#partition method,
# but there's the challenge in that? :)
#

def partition(list, &block)
    [list.select(&block), list.reject(&block)]
end
