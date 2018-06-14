class AddTableSynonymWords < ActiveRecord::Migration[5.1]
  def change
    create_table :synonym_words do |t|
      t.integer :original, null: false
      t.integer :similar, null: false
      t.timestamps
    end
  end
end
