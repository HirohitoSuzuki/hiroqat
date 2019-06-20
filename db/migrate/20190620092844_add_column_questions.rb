class AddColumnQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :read, :boolean, default: false, null: false
  end
end
