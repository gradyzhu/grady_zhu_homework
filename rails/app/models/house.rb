class House < ApplicationRecord
    has_many :persons,
      primary_key: id
      foreign_key: person_id
      class: :Person
   
    belongs_to :person,
      class_name: Person
      source: person
   end