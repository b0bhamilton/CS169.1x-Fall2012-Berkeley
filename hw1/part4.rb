class Dessert
  def initialize(name, calories)
	@name = name
	@calories = calories
  end
  
  def name=(name)
	@name = name
  end

def calories=(calories)
	@calories = calories
end 

def name 
@name
end 

def calories 
@calories 
end 
  
  def healthy?
    return (@calories <200)
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    	@flavor = flavor
  end

def flavor=(flavor)
@flavor = flavor 
end

def flavor 
@flavor
end
  
  def delicious?
	if (@flavor == "black licorice") then return false
	else 
	return true
end
  end
end
