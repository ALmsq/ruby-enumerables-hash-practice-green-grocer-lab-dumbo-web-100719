def consolidate_cart(cart)
  hash = Hash.new
  cart.each{|item|
    item.each{|veg, info|
    
      if !hash[veg]
        hash[veg] = info
      end
      
      if hash[veg][:count]
        hash[veg][:count] += 1 
      else
        hash[veg][:count] = 1
      end
    }
  }
  hash
end

def apply_coupons(cart, coupons = 0)
  name = coupons[0][:item]
  cart.each{|key, value|
   if coupons[0][:num] >= 1 && key.include?(coupons[0][:item])
     
        value[:count] -= coupons[0][:num]
          
    return  cart.merge({"#{name} W/COUPON" => {:price => coupons[0][:cost] / coupons[0][:num],:clearance => value[:clearance],:count => coupons[0][:num] }})
  

      end
  }
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
