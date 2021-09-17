# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :tickets do
      primary_key :id
      column :title, String, null: false
      column :comment, String, null: true
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      foreign_key :project_id, :projects, null: false
    end

    add_index :tickets, :project_id
  end
end
