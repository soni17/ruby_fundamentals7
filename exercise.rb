class Person

  def initialize(name)
    @name = name
    @emotions = {
      :happy => 3,
      :angry => 3,
      :calm => 2,
      :distracted => 1,
      :cool => 2
    }
  end

  def message()
    @emotions.each do |k,v|
      puts "I am feeling a #{level(v)} amount of #{k}"
    end
  end

  def level(arg)
    if(arg==1)
      return "low"
    elsif (arg==2)
      return "medium"
    elsif (arg==3)
      return "high"
    end
  end

end

john = Person.new("John")
john.message()
