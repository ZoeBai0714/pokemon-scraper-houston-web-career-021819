class Pokemon
  attr_accessor :id, :name, :type, :db
  def initialize(id:, name:, type:, db:)
  end
  
  def self.save(name, type, db)
    command = "INSERT INTO pokemon (name, type) VALUES (#{name}, )"
    db.execute()
  end
end
