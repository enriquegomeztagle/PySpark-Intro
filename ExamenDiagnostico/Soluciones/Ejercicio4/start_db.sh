# Start postgres server
brew services start postgresql@14

# Create user and database
psql -U sparkuser -d sparkdb -h localhost
