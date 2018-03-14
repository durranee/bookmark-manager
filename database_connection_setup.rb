require './lib/databaseconnection'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.connect('bookmark_manager_test')
else
  DatabaseConnection.connect('bookmark_manager')
end
