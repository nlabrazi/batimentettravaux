class CreateRoadworks < ActiveRecord::Migration[5.2]
  def change
    create_table :roadworks do |t|
      t.string :name
      t.string :banner_url

      t.timestamps
    end
  end
end
