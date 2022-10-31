class Author < ApplicationRecord
    validates :last_name, presence: true, length: { minimum: 1 }

    has_and_belongs_to_many :papers

    def name
        "#{try(:first_name)} #{try(:last_name)}".to_s
    end
end
