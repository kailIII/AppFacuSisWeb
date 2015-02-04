class CreateMallaCurriculars < ActiveRecord::Migration
  def change
    create_table :malla_curriculares do |t|
      t.references :plan_curricular
      t.references :facultad
      t.references :curso
      t.references :materia

      t.timestamps
    end
    add_index :malla_curriculares, :plan_curricular_id
    add_index :malla_curriculares, :facultad_id
    add_index :malla_curriculares, :curso_id
    add_index :malla_curriculares, :materia_id
  end
end
