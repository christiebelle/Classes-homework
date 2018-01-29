# class CodeClanStudent
#   attr_accessor :name, :cohort, :language
#
#   def initialize(input_name, input_cohort, input_language)
#     @name = input_name
#     @cohort = input_cohort
#     @language = input_language
#   end
#
#   def talk()
#     return "I can talk!"
#   end
#
#   def favourite_language()
#     return "I love #{@language}!"
#   end
#
# end
#
# class SportsTeam
#   attr_accessor :players, :coach, :points
#   attr_reader :team_name
#
#   def initialize(input_team_name, input_players, input_coach)
#     @team_name = input_team_name
#     @players = input_players
#     @coach = input_coach
#     @points = 0
#   end
#
#   def add_player(name)
#     @players << name
#   end
#
#   def check_player(check_player)
#     @players.include?(check_player)
#   end
#
#   def update_points(result)
#     if result == "Win"
#       @points += 2
#     elsif result == "Draw"
#       @points += 1
#     end
#   end
#
#
# end

#EXTENSION
class Library
  attr_reader :books

  def initialize(books)
    @books = books
  end

  def get_info_for_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
    return nil
  end

  def renter_details(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
    return nil
  end

  def add_book_title(title)
    @books << {title:title, rental_details:{student_name: "", date: ""}}
  end

def update_rental_details(title, renter, date)
  book = get_info_for_title(title)
  book[:rental_details][:student_name] = renter
  book[:rental_details][:date] = date
end


end
