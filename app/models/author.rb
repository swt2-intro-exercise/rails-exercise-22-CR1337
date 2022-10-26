class Author < ApplicationRecord
    def name
        "#{try(:first_name)} #{try(:last_name)}".to_s
    end
end
