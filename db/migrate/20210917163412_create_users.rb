# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :users do
      primary_key :id
      column :username, String, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end

    alter_table :tickets do
      add_foreign_key :user_id, :users
    end
  end
end
