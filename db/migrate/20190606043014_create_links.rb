class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links, id: false do |t|
      t.integer :from_
      t.string :to
      t.binary :sortkey
      t.date :timestamp
      t.binary :sortkey_prefix
      t.binary :collation
      t.string :type
      t.timestamps
    end
    execute "ALTER TABLE links ADD PRIMARY KEY (from_);"
  end
end
