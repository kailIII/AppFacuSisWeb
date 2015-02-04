class CreatePlanCurriculars < ActiveRecord::Migration
  def change
    create_table :plan_curricular do |t|
      t.string :nombre, :limit => 60

      t.timestamps
    end
  end
end
