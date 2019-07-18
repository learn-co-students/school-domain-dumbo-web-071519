def sort 
    hash1 = {}
    roster.each do |x, y| 
      hash1[x] = y.sort 
    end 
    
    hash1
  end 
    
  end 