a = [1, 2, 3, 4, 5]
p a

a_squared = a.map { |e| e**2 }
p a_squared

proc_square = Proc.new { |e| e**2 }
p proc_square

a_squared_w_proc = a.map { |e| proc_square.call e}
p a_squared_w_proc

a.each { |e| p proc_square.call e }

proc_complicated = Proc.new { |e| ((((e.to_f - 2)**2)/5)**(1/2)).floor }
p proc_complicated

a_complicated_w_proc = a.map { |e| proc_complicated.call e}
p a_complicated_w_proc

lambda_square = lambda { |e| e**2 }
p lambda_square

a_squared_w_lambda = a.map { |e| lambda_square.call e }
p a_squared_w_lambda