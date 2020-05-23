class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reports

  # 0が在籍中の社員、1が退職した社員
  enum is_active: { 在籍中: 0, 退職済み: 1 }

  # trueが管理者、falseが社員
  # enum admin: { 管理者: true, 一般社員: false }
end
