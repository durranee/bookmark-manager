require 'databaseconnection'

describe DatabaseConnection do
  describe '#connection' do
    it 'tests that it creates a connection to database' do
      my_connection = DatabaseConnection.connect('bookmark_manager_test') #change to test as we're testing test?
      expect(DatabaseConnection.database).to eq my_connection
    end
  end

  describe '#query' do
    it 'test that connection executes the query' do
      DatabaseConnection.connect('bookmark_manager_test') # change to test as we're testing test?
      expect(DatabaseConnection.database).to receive(:exec).with("SELECT * FROM links")
      DatabaseConnection.query("SELECT * FROM links")
    end
  end
end
