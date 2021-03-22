require 'pry'

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer) #why couldn't it be (backer, self)?
    end


    def self.all
        @@all
        end
      
        def backers
           backers_all = ProjectBacker.all.select do |pb|
                pb.project == self
               # binding.pry
            end

            backers_all.map do |b|
                b.backer
            end
        end
      
      end