# frozen_string_literal: true

class RankController < ApplicationController
  def index
    @rank = Rank.all.order(:rankname)
  end

  def show
    @rank = Rank.find(params[:id])
    @champion = Champion.find(params[:id])
  end
end
