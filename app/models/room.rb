# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base
  validates :title, presence: true, message: "El titulo es necesario"
  validates :image_url. presence: true, message: "La url es necesaria"
  validates :description, presence: true, message: "La descripcion es necesaria"
  validates :description, lenght:{maximum: 400}, message: "la descripcion es muy larga"
  validates :beds, presence: true, message: "Por favor ingresar la cantidad de habitaciones"
  validates :beds, numericality: {only_integer: true}, message: "unicamente numeros enteros"
  validates :guests, presence: true, message: "La cantidad de invitados es necesaria"
  validates :guests, numericality: {only_integer: true} "unicamente numeros enteros"
end
