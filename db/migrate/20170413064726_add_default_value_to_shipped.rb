class AddDefaultValueToShipped < ActiveRecord::Migration[5.0]
  def change
    change_column_default :orders, :shipped, false
  end
end
