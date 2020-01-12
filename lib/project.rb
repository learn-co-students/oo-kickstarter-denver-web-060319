class Project

    attr_reader :title
    attr_accessor :backers

    @@all= []

    def initialize(name)
        @title = title
        @backers = []
        @@all << self
    end


    def self.all
        @@all
    end

    def add_backer(backer)
        backer.backed_projects << self
        self.backers << backer
    end

end