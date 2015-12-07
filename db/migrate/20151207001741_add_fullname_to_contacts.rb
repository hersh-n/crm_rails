class AddFullnameToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :fullname, :string
  end
end
