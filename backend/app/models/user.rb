class User < ApplicationRecord

    #this is provided by bcrypt gem build in method
    has_secure_password
end
