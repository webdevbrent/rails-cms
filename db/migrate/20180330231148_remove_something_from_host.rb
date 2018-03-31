class RemoveSomethingFromHost < ActiveRecord::Migration[5.1]
  def change
    remove_column :hosts, :car_type, :string
  end
end
