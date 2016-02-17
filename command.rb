
require './database_configuration.rb'
require './department_and_employee_migration.rb'
require './employee.rb'
require './department.rb'

DepartmentsAndEmployeesMigration.migrate(:up)
