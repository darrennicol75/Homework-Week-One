#### Darren Nicol week one homework ####

# Question one #
# The test is written for pulling the name from
# the petshop hash, therefore the code needs to pulls
# the name of Camelot of Pets.
def pet_shop_name(name)
  return name[:name]
end
# this function pulls the name from the @petshop hash
# it is a hash so therefore needs [:]

# Question two #
# def test_total_cash
#   sum = total_cash(@pet_shop)
#   assert_equal(1000, sum)
# end
# The test is written for pulling the total cash hash
# from the admin hash which is inside the petshop hash.
def total_cash(cash)
  return cash[:admin][:total_cash]
end

# Question three #
# def test_add_or_remove_cash__add
#   add_or_remove_cash(@pet_shop,10)
#   cash = total_cash(@pet_shop)
#   assert_equal(1010, cash)
# end
# the above test is aiming to add 10 to the total cash
# as it checks the output against 1010.
def add_or_remove_cash(cash, amount)
  return cash[:admin][:total_cash] += amount
end
# mistake was made as defined cash__add also use
# variable as amount not 10
# this function needs two arguements cash i.e.
# where to add and also a value to add (10)

# Question four #
# def test_add_or_remove_cash__remove
#   add_or_remove_cash(@pet_shop,-10)
#   cash = total_cash(@pet_shop)
#   assert_equal(990, cash)
# end
# the above test is similar to question three accept
# it is looking to remove 10
def add_or_remove_cash(cash, amount)
  return cash[:admin][:total_cash] += amount
end
# it's the same code as the test includes a minus

# Question five #
# def test_pets_sold
#   sold = pets_sold(@pet_shop)
#   assert_equal(0, sold)
# end
# this test is looking for the number of pets pets_sold
# which is in the admin hash inside the petshop hash
def pets_sold(pets_sold_number)
  return pets_sold_number [:admin][:pets_sold]
end
# single variable from admin and pets sold hash.

# Question six #
# def test_increase_pets_sold
#   increase_pets_sold(@pet_shop,2)
#   sold = pets_sold(@pet_shop)
#   assert_equal(2, sold)
# end
# this test would like to increase the number of pets
# sold to 2 so similar to the adding cash function.
def increase_pets_sold(pets_sold_number, amount)
  return pets_sold_number[:admin][:pets_sold] += amount
end

# Question seven #
# def test_stock_count
#   count = stock_count(@pet_shop)
#   assert_equal(6, count)
# end
# This test is looking for stock count which is given
# as six, this could be done by counting the length of
# the pets array
def stock_count(stock_number)
  return stock_number [:pets].count
end

# Question eight #
# def test_all_pets_by_breed__found
#   pets = pets_by_breed(@pet_shop, "British Shorthair")
#   assert_equal(2, pets.count)
# end
#
# The test has been written to count pets by breed
# This is given as 2 b/s so need to runthrough the
# pets array hash and check count.
# In order to do so you create an empty
# array, so if the breed is b/s you push into the
# array before returning the pets array.
def pets_by_breed(shop, breed) # def the function with two arguements of shop and breed which are passed in through test as @pet_shop and "B/s"
  pets_array = [] #creates a new array
  for pet in shop[:pets] #for loop says for a pet in @pet_shop pets
    pets_array.push(pet) if pet[:breed] == breed #push the pet breed of B/s into the pets array
    end
    return pets_array #return the pets array (2)
end

# Question nine #

# def test_all_pets_by_breed__not_found
#   pets = pets_by_breed(@pet_shop, "Dalmation")
#   assert_equal(0, pets.count)
# end

# the previous code will also work here

def pets_by_breed(shop, breed)
  pets_array = []
  for pet in shop[:pets]
    pets_array.push(pet) if pet[:breed] == breed
    end
    return pets_array
end

# Question ten #
# def test_find_pet_by_name__returns_pet
#   pet = find_pet_by_name(@pet_shop, "Arthur")
#   assert_equal("Arthur", pet[:name])
# end

# this test is asking to find pet by name, so feels like a for loop is required to run through the pets array and return the pet called Arthur.

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end
# look out for ends, also needed something should it not be found.

# Question eleven #
# def test_find_pet_by_name__returns_nil
#   pet = find_pet_by_name(@pet_shop, "Fred")
#   assert_nil(pet)
# end
# Similar to above but return nil if there is no pet under the given name.

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

# Question twelve #
# def test_remove_pet_by_name
#   remove_pet_by_name(@pet_shop, "Arthur")
#   pet = find_pet_by_name(@pet_shop,"Arthur")
#   assert_nil(pet)
# end

# Remove a pet from the pet hash

def remove_pet_by_name(pet_shop, name)
  pet_to_be_removed = find_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete(pet_to_be_removed)
end
# this function pulls in the previous function:
# set it to a variable and then use the variable results
# looks in @pet shop finds name Arthur as per previous
# function if it finds Arthur it deletes him
# if not it deletes a nil. Or use a loop as below: -

# def remove_pet_by_name(pet_shop, name)
#   for pet in pet_shop[:pets]
#     if pet[:name] == pet_shop_name
#       return pet_shop[:pets].delete(pet)
#     end
#   end
# end

# Question thirteen #
# def test_add_pet_to_stock
#   add_pet_to_stock(@pet_shop, @new_pet)
#   count = stock_count(@pet_shop)
#   assert_equal(7, count)
# end

# test is for adding a pet to stock, the pet is in a seperate hash called @new_pet. It is to be added to a hash called @pet_shop into the nested array.
# Thereafter it is to check to see the new count which should be 7.

def add_pet_to_stock (pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  pet_to_be_added = stock_count(pet_shop)
  #return pet_shop.count
end

# Question fourteen #
# def test_customer_cash
#   cash = customer_cash(@customers[0])
#   assert_equal(1000, cash)
# end
# Test is looking for customers cash from the customers array. Cash is equal to 1000 so this means it is Alice's cash or position [0].
def customer_cash(alice_cash)
  return alice_cash[:cash]
end

# Question fifeteen #
# def test_remove_customer_cash
#   customer = @customers[0]
#   remove_customer_cash(customer, 100)
#   assert_equal(900, customer[:cash])
# end
# #
# # The test is removing 100 in cash from Alice similar to excercise three.
def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

# Question sixteen #
# def test_customer_pet_count
#   count = customer_pet_count(@customers[0])
#   assert_equal(0, count)
# end
# The test is to count a customers pet count, in this case Alices. So need to retieve the count from the hash inside the @customer array.
def customer_pet_count(number)
  return number[:pets].count
end

# Question Seventeen #
# def test_add_pet_to_customer
#   customer = @customers[0] # this is Alice
#   add_pet_to_customer(customer, @new_pet) #this adds @new_pet to customer Alice
#   assert_equal(1, customer_pet_count(customer))
# end

# This test is to add to the count, @new_pet....which I felt needed to be converted to a number, but seem to work without.

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
  customer[:pets].count
end

##########################################
# Optional #
# Question One #
# def test_customer_can_afford_pet__insufficient_funds
#   customer = @customers[1]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(false, can_buy_pet)
# end

# This test is to test whether customers can afford the pets from the pet shop.

# the customer is customer [1] who is Bob who has 50 available to spend. So we need to check the price of @new_pet with the condition of 50 constraint.

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash]<= new_pet[:price]
    return false
  else
    return true
  end
end

# Question two #

# def test_customer_can_afford_pet__sufficient_funds
#   customer = @customers[0]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(true, can_buy_pet)
# end

# Similar to above accept customer is Alice.

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash]<= new_pet[:price]
    return false
  else
    return true
  end
end

# Question three #

# #These are 'integration' tests so we want multiple asserts.
# #If one fails the entire test should fail
#
# def test_sell_pet_to_customer__pet_found
#    customer = @customers[0]
#    pet = find_pet_by_name(@pet_shop,"Arthur")
#
#    sell_pet_to_customer(@pet_shop, pet, customer)
#
#    assert_equal(1, customer_pet_count(customer))
#    assert_equal(1, pets_sold(@pet_shop))
#    assert_equal(100, customer_cash(customer))
#    assert_equal(1900, total_cash(@pet_shop))
#  end

# As above it's selling Arthur the Husky to the customer (Alice)
# the code needs to increase customer pet count by one
# reduce the store count by one, and adjust the cash (cost of 900), then remove Arthur from stock.
# there are three inputs required: -

def sell_pet_to_customer(pet_shop, pet, customer)
  pet_shop[:admin][:pets_sold] += pet
  customer[:pets] += pet
  customer[:cash] -= pet[:price]
  pet_shop[:admin][:total_cash] += pet[:price]
  pet_shop[:pets].delete(pet)
end
# If i has out the count section it seems to work, so feels like I have the pricing part correct but can't get it to run for the count for both Alice and the shop.
