class Employee < ApplicationRecord
	validates :nombre, presence: true,
                    length: { minimum: 4 }
	validates :area, presence: true,
                    length: { minimum: 2 }
    validates :codigo, presence: true,
                    length: { minimum: 4 }                   
    validates :contrasena, presence: true,
                    length: { minimum: 8, maximun: 35} 
end
