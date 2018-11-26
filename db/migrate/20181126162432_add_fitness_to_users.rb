class AddFitnessToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fitness, :string
  end
end
