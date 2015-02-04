class CreateOportunidads < ActiveRecord::Migration
  def change
    create_table :oportunidades do |t|
      t.string :nombre, :limit => 60

      t.timestamps
    end
  end
end
