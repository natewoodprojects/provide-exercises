class Grade
    attr_reader :grade, :value
    def initialize(grade)
        values = {"a+" => 1, "a" => 2, "a-" => 3, "b+" => 4, "b" => 5, "b-" => 6, "c+" => 7, "c" => 8, "c-" => 9, "d+" => 10, "d" => 11, "d-" => 12, "f" => 13}
        @grade = grade.downcase
        @value = values[@grade]
    end

    def to_s
        @grade
    end

    def <=>(other)
        @value <=> other.value
    end
    # This ensures that an object made with this class will equal another object with the same grade, and thus value. 
    def ==(other)
        self.grade == other.grade &&
        self.value == other.value
    end
end

mike = Grade.new("a+")
marco = Grade.new("a+")
ben = Grade.new("D+")
michael = Grade.new("b+")
nate = Grade.new("F")
josh = Grade.new("c+")
nick = Grade.new("B")

array = [mike, marco, ben, michael, nate, josh, nick]


sorted_array = array.sort
puts(sorted_array)
# values = {"a+" => 1, "a" => 2, "a-" => 3, "b+" => 4, "b" => 5, "b-" => 6, "c+" => 7, "c" => 8, "c-" => 9, "d+" => 10, "d" => 11, "d-" => 12, "f" => 13}
# puts(values['f'])
# puts(nate.to_i)

puts mike == marco