def mod256_without_mod(x)
  (x.abs & 0xff) * (x <=> 0)
end
