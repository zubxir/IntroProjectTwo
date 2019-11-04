# frozen_string_literal: true

# test

class ChampionController < ApplicationController
  def show
    @champion = Champion.find(params[:id])
  end

  def index
    if params[:search]
      case params['options'].to_i
      when 1
        character = Champion.where('champname LIKE ?', "%#{params[:search]}%").order(:name).page(params[:page])
        @champion = character || Champion.order(:name).page(params[:page])
      when 2
        character = Champion.joins(:rank).where('rankname LIKE ?', "%#{params[:search]}%").order(:name).page(params[:page])
        @champion = character || Champion.order(:name).page(params[:page])
      when 3
        character = Champion.joins(:location).where('locationname LIKE ?', "%#{params[:search]}%").order(:name).page(params[:page])
        @champion = character || Champion.order(:name).page(params[:page])
      when 4
        character = Champion.joins(:mastery).where('masteryname LIKE ?', "%#{params[:search]}%").order(:name).page(params[:page])
        @champion = character || Champion.order(:name).page(params[:page])
      when 5
        character = Champion.joins(:spell).where('spellname LIKE ?', "%#{params[:search]}%").order(:name).page(params[:page])
        @champion = character || Champion.order(:name).page(params[:page])
      end
    else
      @champion = Champion.order(:champname).page(params[:page])
    end
  end
end
