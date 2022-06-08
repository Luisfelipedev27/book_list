require "test_helper"

class LivroTest < ActiveSupport::TestCase
  test "Atributos do Livro não devems estar Vazios" do 
    livro = Livro.new
    assert livro.invalid? 
    assert livro.errors[:titulo].any?
    assert livro.errors[:autor].any?
    assert livro.errors[:ano].any?
  end
end
