class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.belongs_to :user
      t.string :content
      t.timestamps
    end
  end
end
