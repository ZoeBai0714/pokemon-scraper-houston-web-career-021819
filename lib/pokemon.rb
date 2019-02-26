
requrie 'pry'
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
    binding.pry
    #Pokemon.new(object[0][0], object[01][1], object[0][2], db)
  end
end
