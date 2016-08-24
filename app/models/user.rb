class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile

  ROLES = %w(student teacher admin)

  def is_admin?
    role == 'admin'
  end

  def is_teacher?
    role == 'teacher'
  end

  def is_student?
    role == 'student'
  end
end
