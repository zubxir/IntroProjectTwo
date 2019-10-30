# frozen_string_literal: true

class ChampionController < ApplicationController
  def show
    @champion = Champion.find(params[:id])
  end

  def index
    @champion = Champion.all.order(:champname)
  end
end
