require 'database.config.rb'
class EmployeeMigration < ActiveRecord::Migration
  def change
    create_table :clients do |t|
