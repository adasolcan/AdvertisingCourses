class User < ActiveRecord::Base
  include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_many :course_session, :foreign_key => "instructor_id"
  has_many :course_enrolment, :foreign_key => "user_id"
end
