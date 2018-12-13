require 'pry'
def consolidate_cart(cart)
  # code here
  new_cart = {}

  cart.each do |items|
    items.each do |item, data|
    if !new_cart.has_key?(item)
      new_cart[item] = data
      new_cart[item][:count] = 1
    else
      new_cart[item][:count] += 1
      end
    end
  end
  new_cart
end

def apply_coupons(cart, coupons)
  # code here
  coupons.each do |hash|
    hash.each do |attribute, data|


  cart.each do |items, values|
    values.each do |item, value|

      if values[:count] == hash[:num]
        cart.merge({"#{items} W/COUPON" => {:price => hash[:cost], :clearance => values[:clearance], :count => 1 }})
          #binding.pry
          end
        end
      end
    end
  end
   return cart
end
=end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
