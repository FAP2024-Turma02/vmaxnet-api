class CorporateClient < Client
    validates :legal_name, presence: true
    validates :trade_name, presence: true
    validates :cnpj, presence: true, uniqueness: true
    validates :ie, presence: true
    validates :foundation_date, presence: true
    validates :has_partnership, inclusion: { in: [true, false] }
    validates :how_find_us, presence: false
end