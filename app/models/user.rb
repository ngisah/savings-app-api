class User < ApplicationRecord
    has_many :transactions
    has_many :contributions
end
