class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :question_id

      t.timestamps null: false
    end
  end
end
