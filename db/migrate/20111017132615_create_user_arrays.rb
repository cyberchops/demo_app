class CreateUserArrays < ActiveRecord::Migration
  def change
    create_table :user_arrays do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
