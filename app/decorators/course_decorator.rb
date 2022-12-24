class CourseDecorator < ApplicationDecorator
  def sections
    course.sections.map { |section| SectionDecorator.new(section) }
  end

  private

  def cours
    __getobj__
  end
end
