class SpellController < ApplicationController
  def index
    @spell = Spell.all.order(:spellname)
  end

  def show
  end
end
