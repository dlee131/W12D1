# == Schema Information
#
# Table name: pokemons
#
#  id         :bigint           not null, primary key
#  number     :integer          not null
#  name       :string           not null
#  attack     :integer          not null
#  defense    :integer          not null
#  poke_type  :string           not null
#  image_url  :string           not null
#  captured   :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pokemon < ApplicationRecord
    
    TYPES = 
    [
    'fire',
    'electric',
    'normal',
    'ghost',
    'psychic',
    'water',
    'bug',
    'dragon',
    'grass',
    'fighting',
    'ice',
    'flying',
    'poison',
    'ground',
    'rock',
    'steel'
  ].sort.freeze

    validates :captured, inclusion: [true, false]
    validates :name, presence: true, uniqueness: { message: 'name already taken'}, length: { in: 3..255 }
    validates :number, uniqueness: { message: 'number already taken' }, numericality: { minimum: 0}  
    validates :attack, :defense, numericality: { in: 0..100 }, 
    validates :poke_type, inclusion: { in: TYPE, message: 'This is not a valid poke type!!'}
    validates :image_url, presence: true

  






end
