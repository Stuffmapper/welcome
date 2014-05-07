class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
