require 'pry'
class Backer
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       group1 = ProjectBacker.all.select {|project| project.backer == self}
       group1.map do |bac|
       bac.project
       end
    end
end