class Category < ApplicationRecord
    validates :name, presence: true
    
    has_many :products, :dependent => :delete_all
    # has_many :products, :dependent => :nullify
    # has_many :products, :dependent => :cascade
end
