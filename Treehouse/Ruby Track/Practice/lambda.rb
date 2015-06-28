def l
  a = lambda { 
      puts "Inside lambda"
      return "Returning inside lambda"
    }
  a.call
  return "Returning inside method"
end

def p
  a = proc { 
      puts "Inside proc"
      return "Returning inside proc"
    }
  a.call
  return "Returning inside method"
end
    
puts l
puts p