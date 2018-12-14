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
  update = cart
     coupons.each do |discount|
         if update.has_key?(discount[:item])
             count = 0
             while update[discount[:item]][:count] >= discount[:num]
                 count += 1
                 update["#{discount[:item]} W/COUPON"] = {:price => discount[:cost], :clearance => update[discount[:item]][:clearance], :count => count}
                 update[discount[:item]][:count] -= discount[:num]
             end
         end
     end
     update
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
  consolidated_cart = consolidate_cart(cart)
  sale = apply_coupons(consolidated_cart, coupons)
  new_cart = apply_clearance(sale)
  total = 0
  new_cart.each do |item, data|
    total += data[:price] * data[:count]
  end
  if total > 100
    total = total * 0.9
  end
  total
end
