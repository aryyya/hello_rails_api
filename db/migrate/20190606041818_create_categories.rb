class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories, id: false do |t|
      t.integer :id
      t.string :title
      t.integer :pages
      t.integer :subcategories
      t.integer :files
      t.date :created_at
      t.date :updated_at
      t.timestamps
    end
    execute "ALTER TABLE categories ADD PRIMARY KEY (id);"
  end
end
