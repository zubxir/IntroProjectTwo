# frozen_string_literal: true

class RankController < ApplicationController
  def index
    @rank = Rank.all
  end

  def show
    @rank = Rank.find(params[:id])
  end
end
