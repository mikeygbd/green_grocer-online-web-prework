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
  with_coupon = {}
  coupons.each do |hash|
    if cart.has_key?(hash[:item])
      count = 0
      until coupon[:num] > cart[hash][:item][:count]
        cart[hash][:item][:count] -= coupon[:num]
        cart["#{hash[:item]} W/COUPON"] = {:price => hash[:cost], :clearance => cart[hash][:item][:clearance], count: count += 1}
      
      end
    end
  end
  cart.merge(with_coupon)
end





def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
