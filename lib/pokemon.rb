class Pokemon
  attr_accessor :id, :name, :type, :db
  def initialize(id)
    @id = id
  end
  
  def self.save(name, type, db)
    command = "INSERT INTO pokemon (name, type) VALUES ('#{name}', '#{type}');"
    db.execute(command)
  end
  
  def self.find(id, db)
    command = "SELECT * FROM pokemon WHERE id = #{id}"
    object = db.execute(command)
    #binding.pry
    pokemon = Pokemon.new(id)
    pokemon.name = object[0][1]
    pokemon.type = object[0][2]
    pokemon
  end
  
  def alter_hp(new_hp, db)
  end
end
