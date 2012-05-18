# encoding: UTF-8
class City
  include Mongoid::Document
  field :name, type: String
  embeds_many :areas, cascade_callbacks: true
  accepts_nested_attributes_for :areas , :allow_destroy => true, :reject_if => lambda { |a| a[:name].blank? }
end

class Area
  include Mongoid::Document
  field :name, type: String
  embedded_in :city
end