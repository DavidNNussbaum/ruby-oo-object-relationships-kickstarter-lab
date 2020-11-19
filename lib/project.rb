class Project
    @@all = []
    attr_reader :title
    attr_accessor :backer
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        group1 = ProjectBacker.all.select {|backers| backers.project == self}
        group1.map do |pro|
        pro.backer
        end
    end

end