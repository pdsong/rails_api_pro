class CreateHackNews < ActiveRecord::Migration[8.0]
  def change
    create_table :hack_news do |t|
      t.string :cn_title
      t.string :en_title
      t.string :link
      t.string :icon

      t.timestamps
    end
  end
end
