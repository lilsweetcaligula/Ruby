def array_packing(arr)
  arr.map { |bits| bits.to_s(2).rjust(8, "0") }.reverse.join.to_i(2)
end
