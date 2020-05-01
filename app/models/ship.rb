class Ship

    #### Attributes ####
    attr_accessor :name, :type, :booty
    @@all = []

    #### Instance Methods ####
    def initialize(hash)
        @name = hash[:name]
        @type = hash[:type]
        @booty = hash[:booty]

        @@all << self
    end

    #### Class Methods####
    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end

end
