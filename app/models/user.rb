class User < ApplicationRecord
	#obligation d'avoir un nom avec le nombre de caractere definie 
    validates :username, presence: true, length:{minimum: 3, maximum: 25}
    
    #obligation d'avoire une bio avec le nombre de caractere definie 
    validates :bio,  presence: true, length:{minimum: 10, maximum: 300}
end
