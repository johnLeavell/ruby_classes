class Patronus
    attr_reader :name, :animal

    EMOJIS = {
    "hare" => "🐇",
    "stag" => "🦌",
    "otter" => "🦦",
    "swan" => "🦢",
    "wolf" => "🐺",
    "horse" => "🐴",
    "dog" => "🐕",
    "cat" => "🐈",
    "dolphin" => "🐬",
    "eagle" => "🦅",
    "fox" => "🦊",
    "goat" => "🐐",
    "phoenix" => "🦩",
    }
    
    def initialize(name)
        @name = name
        @animal = animal
    end

    def emoji
        EMOJIS[@name]
    end

    def to_s
        "#{@name}: #{@animal}"
    end
end