class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # remnove :registerable, to prevent sign up
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
