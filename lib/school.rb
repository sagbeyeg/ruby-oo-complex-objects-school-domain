require 'pry'

class School
    attr_reader :name, :roster

      def initialize(name)
        @name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sort_roster = {}  
        @roster.each do|key, value|
            sort_roster[key] = value.sort
        end
        sort_roster
    end
end