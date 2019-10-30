# frozen_string_literal: true

class ChampionController < ApplicationController
  def show; end

  def index
    @champion = Champion.all
    @location = Location.all
    @rank = Rank.all
  end
end
