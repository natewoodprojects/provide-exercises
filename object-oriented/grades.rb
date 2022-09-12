class Grade
    def initialize(grade)
        @grade = grade
    end

    def to_s
        @grade
    end

    def to_i
        values = {"a+": 1, "a": 2, "a-": 3, "b+": 4, "b": 5, "b-": 6, "c+": 7, "c": 8, "c-": 9, "d+": 10, "d": 11, "d-": 12, "f": 13}
        return values["a"]
    end
end

mike = Grade.new("a+")
marco = Grade.new("a-")
ben = Grade.new("d+")
michael = Grade.new("b+")
nate = Grade.new("f")
josh = Grade.new("c+")
nick = Grade.new("b")

array = [mike, marco, ben, michael, nate, josh, nick]

puts(array.sort)

values = {"a+": 1, "a": 2, "a-": 3, "b+": 4, "b": 5, "b-": 6, "c+": 7, "c": 8, "c-": 9, "d+": 10, "d": 11, "d-": 12, "f": 13}

puts(values['f'])