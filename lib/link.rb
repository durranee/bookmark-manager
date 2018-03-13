require 'pg'

class Link
attr_reader :links

def self.all
  connection = PG.connect(dbname: 'bookmark_manager')
  result = connection.exec("SELECT * FROM links")
  result.map { |link| link['url'] }
end

  def initialize
    @links = ["www.google.co.uk", "www.bbc.com", "www.cnn.com"]
  end
end
