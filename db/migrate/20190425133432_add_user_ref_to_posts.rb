# frozen_string_literal: true

# Add User Ref To Posts
class AddUserRefToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :user, foreign_key: true
  end
end
