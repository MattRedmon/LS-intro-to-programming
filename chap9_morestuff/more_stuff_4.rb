# exercise  - modify code from # 2 to make block execute properly

def execute(&block)
  block.call  # add ".call" here to make code from #2 run correctly
end
execute { puts "Hello from inside the execute method" }
