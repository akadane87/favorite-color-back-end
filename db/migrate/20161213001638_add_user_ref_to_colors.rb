class AddUserRefToColors < ActiveRecord::Migration
  def change
    add_reference :colors, :user, index: true, foreign_key: true
  end
end
