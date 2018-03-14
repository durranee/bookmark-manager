require 'pg'
require 'databaseconnection'
p "Setting up test database..."

# connection = PG.connect(dbname: 'bookmark_manager_test')

DatabaseConnection.query("Truncate links;")

DatabaseConnection.query("INSERT INTO links VALUES(1, 'http://www.makersacademy.com');")
DatabaseConnection.query("INSERT INTO links VALUES(2, 'http://www.google.com');")
DatabaseConnection.query("INSERT INTO links VALUES(3, 'http://www.facebook.com');")
