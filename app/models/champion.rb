# frozen_string_literal: true

class Champion < ApplicationRecord
  belongs_to :location
  belongs_to :mastery
  belongs_to :quote
  belongs_to :rank
  belongs_to :spell
end
