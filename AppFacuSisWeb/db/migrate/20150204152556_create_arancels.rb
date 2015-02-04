class CreateArancels < ActiveRecord::Migration
  def change
    create_table :aranceles do |t|
      t.string :nombre, :limit => 60

      t.timestamps
    end
  end
end
