
a = [1,2,3,5,7,8];
s = [2,4,7];

def dec_oracle(a, s, t)
  s_sum = 0;
  for i in 0..s.length() - 1
    s_sum += s[i];
  end
  new_target = t - s_sum;
  new_a = a - s;
  for i in 0..new_a.length - 1
    puts new_a[i]
  end
end

dec_oracle(a, s, 15);
