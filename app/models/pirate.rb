class Pirate

    #### Attributes ####
    attr_accessor :name, :height, :weight
    @@all = []

    #### Instance Methods ####
    def initialize(hash)
        @name = hash[:name]
        @weight = hash[:weight]
        @height = hash[:height]

        @@all << self
    end

    #### Class Methods####
    def self.all
        @@all
    end

end
