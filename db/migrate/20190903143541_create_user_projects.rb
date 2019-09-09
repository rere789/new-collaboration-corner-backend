class CreateUserProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :userprojects do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.boolean :intrested, :default => false
      t.boolean :collaborating, :default => false

      t.timestamps
    end
  end
end
