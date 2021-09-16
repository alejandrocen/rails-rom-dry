# frozen_string_literal: true

RSpec.configure do |config|
  def db
    Sequel::DATABASES.first
  end

  def migrations_must_be_run!
    raise 'Migrations need to be run. Run this command: rake db:migrate RAILS_ENV=test'
  end

  config.before(:all) do
    migrations = db[:schema_migrations].order(Sequel.desc(:filename))
    migrations_must_be_run! if migrations.empty?

    last_migration_in_db = migrations.first[:filename]
    last_migration_in_fs = File.basename(Dir[Rails.root.join('db/migrate/*.rb')].max)
    migrations_must_be_run! if last_migration_in_fs != last_migration_in_db
  end

  config.before do
    db[*(db.tables - [:schema_migrations])].truncate
  end
end
