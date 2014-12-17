class CalendarItemSerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :cl

  def title
  	"#{object.title} - #{object.description}"
  end

  def cl
  	"#{object.class.name}"
  end

end
