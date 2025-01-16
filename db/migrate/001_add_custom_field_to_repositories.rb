class AddCustomFieldToRepositories < ActiveRecord::Migration[6.1]
  def change
    add_column :repositories, :custom_field, :string
  end
end
