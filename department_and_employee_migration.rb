require './database_configuration.rb'

class DepartmentsAndEmployeesMigration < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :employees do |t|
      t.references :department
      t.string :name
      t.string :email
      t.string :phone
      t.integer :salary
      t.text :review
      t.timestamps null: false
    end

    create_table :reviews do |t|
      t.references :employees
      t.text :review
      t.timestamps null: false
    end
  end
end
