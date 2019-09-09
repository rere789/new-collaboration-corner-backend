class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :skillset, default: ''
      t.string :img, default: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuQ9n1hpkcy_qwoZsYSVu6W0PrYhgyA-8HHvv6reVdjPUh5Oy4GA"
      t.string :school, default: ''
      t.string :name, default: ''

      t.timestamps
    end
  end
end
