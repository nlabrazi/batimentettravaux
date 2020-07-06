class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :roadwork, foreign_key: true
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
