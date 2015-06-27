=begin
Problem Statement

You are given some code in the form of lambdas. 

Measure and return the time taken to execute that code. 

You may use Time.now to get the current time.
=end

def exec_time(proc)
  start_time = Time.now
  proc.call
  end_time = Time.now
  end_time - start_time
end