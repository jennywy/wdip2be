class CreateUserlanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :userlanguages do |t|
      t.references :user, foreign_key: true
      t.references :language, foreign_key: true
      t.string :level

      t.timestamps
    end
  end
end
