class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :employees, :proyects do |t|
      t.index [:employee_id, :proyect_id]
      t.index [:proyect_id, :employee_id]
    end
  end
end
