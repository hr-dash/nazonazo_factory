class User < ActiveRecord::Base
  validates :name, unique: { message: "同じ名前のひとがもういます。違う名前にしてください。" }
  validates :password, confirmation: { message: "同じパスワードを入れてください。" }
  validates :password_confirmation, presence: true
end
