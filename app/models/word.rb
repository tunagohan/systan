class Word < ApplicationRecord

  validates :title, presence: true, uniqueness: true
  validates :yomi, presence: true, format: { with: /\A^[ァ-ンｧ-ﾝﾞﾟー－]+$\z/, message: ":カタカナのみで入力して下さい" }
  validates :body, presence: true

  def self.find(input)
    if input.is_a?(Integer)
      super
    else
      find_by_title(input)
    end
  end
  def to_param
    title
  end
end
