class School

    attr_accessor :roster, :grade
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade] != nil
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each { |grade, name|
            name.sort!
        }
    end

end
