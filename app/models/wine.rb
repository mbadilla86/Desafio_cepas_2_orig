class Wine < ApplicationRecord
  has_many :wine_strains, dependent: :destroy
  has_many :strains, through: :wine_strains

  accepts_nested_attributes_for :wine_strains, reject_if: lambda {|a| a[:percentage].blank?}, allow_destroy: true #anidando un formulario de wine_strains y tambien si el porcentaje viene vacio, no lo guarda

end
