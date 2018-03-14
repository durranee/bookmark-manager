require 'pg'

class Link
#attr_reader :links

  def self.connect
    if ENV['ENVIORNMENT'] == 'test'
      @connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      @connection = PG.connect(dbname: 'bookmark_manager')
    end
  end

  def self.all
    connect
    result = @connection.exec("SELECT * FROM links")
    result.map { |link| link['url'] }
  end

  def self.add(url)
    connect
    @connection.exec("INSERT INTO links (url) VALUES('#{url}')")
  end
end
