class RemoveColumnFromTable < ActiveRecord::Migration
  def change
    remove_column :tables, :COLUMNNAME, :DATATYPE
  end
end
