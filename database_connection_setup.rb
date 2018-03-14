require './lib/databaseconnection'

  if ENV['ENVIORNMENT'] == 'test'
    DatabaseConnection.connect('bookmark_manager_test')
  else
    DatabaseConnection.connect('bookmark_manager')
  end
