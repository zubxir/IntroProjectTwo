# frozen_string_literal: true

class ChampionController < ApplicationController
  def show
    @champion = Champion.find(params[:id])
  end

  def index
    if params[:search]
      character = Champion.where('champname LIKE ?', "%#{params[:search]}%").order(:name).page(params[:page])
      @champion = character || Champion.order(:name).page(params[:page])
    else
      @champion = Champion.order(:champname).page(params[:page])
    end
  end
end
