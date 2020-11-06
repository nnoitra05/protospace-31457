class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|

      ##---- Added columns (not default)
      t.string     :title,      null: false
      t.text       :catch_copy, null: false
      t.text       :concept,    null: false
      # t.text     :image,      null: false
      t.references :user,       foreign_key: true
      ##----

      t.timestamps
    end
  end
end
