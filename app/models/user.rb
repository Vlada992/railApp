class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates_presence_of :name         #validate that name exist, user typed id


  def first_name
    self.name.split.first   
  end

  def last_name
    self.name.split.last  

  end

end




# first/lat _name methods, will split and slice first and last name fro user input(expects to be first and last name) and hodl it here
 #this is just Class object