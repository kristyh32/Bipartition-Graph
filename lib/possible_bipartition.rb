def possible_bipartition(dislikes)
  return true if dislikes.length < 2
  
  stack = []
  visited = {}
  
  dislikes.each_index do |i|
    if !visited[i]
      stack << i
      visited[i] = 0
    end
    
    while !stack.empty?
      current = stack.pop
      no_go = dislikes[current]
      
      no_go.each do |dog|
        if !visited[dog]
          stack << dog
          visited[dog] = number(visited[current])
        elsif visited[dog] == visited[current]
          return false
        end
      end
    end
    
  end
  
  return true
end

def number(num)
  if num == 0
    return 1
  else
    return 0
  end
end	