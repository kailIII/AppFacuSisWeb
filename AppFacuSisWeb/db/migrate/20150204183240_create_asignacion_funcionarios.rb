class CreateAsignacionFuncionarios < ActiveRecord::Migration
  def change
    create_table :asignacion_funcionarios do |t|
      t.string :nombre, :limit => 60
      t.references :sede
      t.references :funcionario
      t.references :cargo

      t.timestamps
    end
    add_index :asignacion_funcionarios, :sede_id
    add_index :asignacion_funcionarios, :funcionario_id
    add_index :asignacion_funcionarios, :cargo_id
  end
end
