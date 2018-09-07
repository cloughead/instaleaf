class DispensarySerializer < ActiveModel::Serializer
  include ActionView::Helpers
  attributes :id, :lat, :lng, :icon, :name, :rating

  def icon
    "#{object.kind}.png"
  end


  def rating
    # rating_for object, 'service'
  end



end
