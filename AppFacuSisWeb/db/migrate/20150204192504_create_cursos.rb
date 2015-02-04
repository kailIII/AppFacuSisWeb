class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.references :semestre
      t.references :periodo_lectivo

      t.timestamps
    end
    add_index :cursos, :semestre_id
    add_index :cursos, :periodo_lectivo_id
  end
end
