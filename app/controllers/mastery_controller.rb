# frozen_string_literal: true

class MasteryController < ApplicationController
  def index
    @mastery = Mastery.all.order(:masteryname)
  end

  def show
    @mastery = Mastery.find(params[:id])
  end
end
