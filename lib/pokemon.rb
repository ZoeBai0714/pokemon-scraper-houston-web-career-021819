class Pokemon
  attr_accessor :id, :name, :type, :db
  def initialize(id:, name:, type:, db:)
  end
  
  def self.save(name, type, db)
    command = "INSERT INTO pokemon (id)"
    db.execute()
  end
end
