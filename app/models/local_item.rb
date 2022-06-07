class LocalItem < ApplicationRecord
  belongs_to :livro
  belongs_to :list
end
