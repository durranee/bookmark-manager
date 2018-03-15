require 'pg'
# require './database_connection_setup'
class DatabaseConnection

  def self.connect(db_name)
    @connection = PG.connect(dbname: db_name)
  end

  def self.database
    @connection
  end

  def self.query(sql_squery)
    @connection.exec(sql_squery)
  end
end
