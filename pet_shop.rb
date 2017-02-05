def pet_shop_name(pet_shop_hash)
  return pet_shop_hash[:name]
end

def total_cash(pet_shop_hash)
  return pet_shop_hash[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_hash, amount)
  return pet_shop_hash[:admin][:total_cash] += amount
end

def pets_sold(pet_shop_hash)
  return pet_shop_hash[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_hash, amount)
  return pet_shop_hash[:admin][:pets_sold] += amount
end

def stock_count(pet_shop_hash)
  end_pet = pet_shop_hash[:pets].last
  return pet_shop_hash[:pets].find_index(end_pet) + 1
end

def pets_by_breed(pet_shop_hash, animal)
  array_match = []

  for pet in pet_shop_hash[:pets]
    if pet[:breed] == animal
      array_match.push(pet)
    end
  end
  return array_match
end

def find_pet_by_name(pet_shop_hash, animal_name)
  array_match = []
  for pet in pet_shop_hash[:pets]
    if pet[:name] == animal_name
      array_match.push(pet)
    else
      
    end
  end
  return array_match[0]
end

def remove_pet_by_name(pet_shop_hash, animal_name)
  for pet in pet_shop_hash[:pets]
    if pet[:name] == animal_name
     pet_shop_hash[:pets].delete(pet)
   end
 end
end


def customer_pet_count(customers)
 return customers[:pets].length
end

def add_pet_to_customer(customers, pet)  
 return customers[:pets].push(pet)
end

def customer_can_afford_pet(customer, pet)
  
  if customer[:cash] >= pet[:price]
    return true
  else
    false
  end
end





def sell_pet_to_customer(pet_shop_hash, pet, customer)
if pet == nil
return
 elsif customer_can_afford_pet(customer, pet) == true
   find_pet_by_name(pet_shop_hash, pet) == pet 
   pet_shop_hash[:admin][:total_cash] += pet[:price]
   customer[:pets].push(pet)
   remove_pet_by_name(pet_shop_hash, pet)
  pet_shop_hash[:admin][:pets_sold] += 1
  else
  end
 
end





