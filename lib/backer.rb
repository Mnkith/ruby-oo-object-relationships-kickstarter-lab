
class Backer
  attr_reader :name, :backed_projects 
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    ProjectBacker.all << ProjectBacker.new(project, self)
    project.backers << self
    backed_projects << project
  end
end