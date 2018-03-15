# require 'uri'
require 'pg'
require './lib/databaseconnection'
require 'uri'

class Link

  def self.all
    result = DatabaseConnection.query("SELECT * FROM links")
    result.map { |link| link['url'] }
  end

  def self.add(url)
    DatabaseConnection.query("INSERT INTO links (url) VALUES('#{url}')")
  end

  def self.good_link?(link)
    (link =~ /\A#{URI::regexp(['http', 'https'])}\z/) ? true :
    false
  end
end
