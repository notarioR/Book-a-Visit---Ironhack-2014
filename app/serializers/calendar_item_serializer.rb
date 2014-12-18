class CalendarItemSerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :className

  def title
  	"#{object.title} - #{object.description}"
  end

  def className
  	"#{object.class.name}"
  end

end
