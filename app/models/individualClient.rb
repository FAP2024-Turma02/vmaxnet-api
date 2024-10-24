class IndividualClient < Client
    validates :first_name, presence: true
    validates :nickname, presence: false
    validates :cpf, presence: true, uniqueness: true
    validates :rg, presence: true
    validates :birth_date, presence: true
    validates :how_find_us, presence: false
end
