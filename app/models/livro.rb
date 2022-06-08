class Livro < ApplicationRecord
    paginates_per 5
    validates :titulo, :autor, :ano, presence: true
    has_many :local_items
    before_destroy :ensure_not_referenced_by_any_local_item

    private
        def ensure_not_referenced_by_any_local_item
            unless local_items.empty?
                errors.add(:base, 'Local Items present')
                throw :abort #encerra a execução imediatamente
            end
        end

end
