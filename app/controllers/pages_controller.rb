class PagesController < ApplicationController
  layout 'maps', only: :maps

  def home; end
  def contact; end
  def maps
    @map_type="transit_benches"
  end
end