class AddModels < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
    end

    create_table :skills do |t|
      t.string :name
    end

    create_table :projects do |t|
      t.string :name
    end
  end
end
