class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :phone_no, :role, :profile_url, :password_digest, :confirm_password
end
