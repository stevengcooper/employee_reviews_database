require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3'
)

require 'time_entry_migration.rb'


DeveloperMigration.migrate(:up)
