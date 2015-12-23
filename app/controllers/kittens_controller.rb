class KittensController < ApplicationController
  before_action :authenticate_user!
  
  def random
  end
end
