# frozen_string_literal: true

class SpellController < ApplicationController
  def index
    @spell = Spell.all.order(:spellname)
  end

  def show
    @spell = Spell.find(params[:id])
  end
end
