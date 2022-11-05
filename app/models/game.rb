class Game < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews
end

# There are a couple important things to note when using the has_many macro with the through: option.
# Order matters — you must place the first has_many that references the join table above the second has_many that goes through that join table.


# When calling has_many, we're passing in a first argument of a symbol that refers to the table name in our database (:users). 
# In the second argument, we're passing a key-value pair, where the key is the through option, and the value is the :reviews symbol, 
# which refers to the #reviews method from the first has_many.