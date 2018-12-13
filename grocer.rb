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

update_cart = cart
  coupons.each do |sale|
    if cart.has_key?(sale[:item])
      count = 0

      while update_cart[sale[:item]][:count] >= sale[:num]


        update_cart["#{sale[:item]} W/COUPON"] = {:price => sale[:cost], :clearance => update_cart[sale[:item]][:clearance], :count => count += 1}
          update_cart[sale[:item]][:count] -= update_cart[:num]
      end
    end
  end
  update_cart
end






def apply_clearance(cart)
  # code here
  new_cart = cart
  cart.each do |item, data|
    if cart[item][:clearance] == true
      new_cart[item][:price] = (cart[item][:price]) - (cart[item][:price] * 0.20)

    end
  end
  new_cart
end


def checkout(cart, coupons)
  # code here
end
