class AddTableSynonymWords < ActiveRecord::Migration[5.1]
  def change
    create_table :synonym_words do |t|
      t.integer :original_id, null: false
      t.integer :similar_id, null: false
      t.timestamps
    end
  end
end
