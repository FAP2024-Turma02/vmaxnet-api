class IndividualClient < Client
    validates :name, presence: true
    validates :nickname, presence: false
    validates :cpf, presence: true, uniqueness: true
    validates :rg, presence: true
    validates :date_of_birth, presence: true
    validates :how_find_us, presence: false
end
