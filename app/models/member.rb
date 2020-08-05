class Member
    attr_accessor :name, :power, :bio

    MEMBERS = []

    def initialize(params)
        @name = params[:name]
        @power = params[:power]
        @bio = params[:bio]

        MEMBERS << self
    end

    def self.all
        MEMBERS
    end
end