class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :description
      t.string :needed_skillset
      t.string :comments
      t.references :user
      t.string :snippet 

      t.timestamps
    end
  end
end
