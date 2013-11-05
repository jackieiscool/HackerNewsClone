class AddColumnTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :type, :string, default: 'basic'
  end
end
