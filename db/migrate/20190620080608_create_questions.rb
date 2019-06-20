class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :uname
      t.text :content
      t.timestamp :quetime

      t.timestamps
    end
  end
end
