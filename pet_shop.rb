
# # 01
def pet_shop_name(name)
   return name[:name]
end

# #  02
def total_cash(sum)
  return sum[:admin][:total_cash]
end

# # 03 AND 04
def add_or_remove_cash(name, add_remove)
 return name[:admin][:total_cash] += add_remove
end

# # 05
def pets_sold(name)
  return name[:admin][:pets_sold]
end

# # 06
def increase_pets_sold(name, sold)
  return name[:admin][:pets_sold] += sold
end

#  07
def stock_count(name)
  return name[:pets].count
end

#  08 AND 09
def pets_by_breed(name, breed)
  pets = []
    for pet in name[:pets]
      pets << pet if pet[:breed] == breed
    end
  return pets
end

# 10
def find_pet_by_name(shop, pet_name)
  return shop[:pets][:name] == pet_name
end

# 11
def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
        return pet
    end
  end
    return
end

# 12 WRONG
# def remove_pet_by_name(shop, pet_name)
#   for pet in shop[:pets]
#     if pet[:name] == pet_name
#        pet[:name].delete(pet_name)
#     end
#   end
# end

# 13
def add_pet_to_stock(shop, new_pet)
    shop[:pets] << new_pet
end

# 14
def customer_cash(customer)
 return customer[:cash]
end

# 15
def remove_customer_cash(customer, remove)
 customer[:cash] -= remove
end

# 16

def customer_pet_count(customer)
  customer[:pets].length
end

# 17
def add_pet_to_customer(customer, new_pet)
    customer[:pets] << 1
end


# --- OPTIONAL ---

# 18, 19 AND 20

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    true
  else
    false
  end
end

# # 21, 22 AND 23 IN PROGRESS
# def sell_pet_to_customer(shop, pet, customer)
#
#
#    customer[:pets] << customer_pet_count(customer)
#    shop[:admin][:pets_sold] = 1
#    customer[:cash] -= 900
#    shop[:admin][:total_cash] += 900
#
# end
