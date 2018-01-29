require('minitest/autorun')
require('minitest/rg')
require_relative('../lab.rb')

#PART A
# class TestCodeClanStudent < MiniTest::Test
#
#   def test_student_name
#     student = CodeClanStudent.new("Christie", 4, "Ruby")
#     assert_equal("Christie", student.name())
#   end
#
#   def test_student_cohort
#     student = CodeClanStudent.new("Christie", 4, "Ruby")
#     assert_equal(4, student.cohort())
#   end
#
#   def test_set_student_name
#     student = CodeClanStudent.new("Christie", 4, "Ruby")
#     student.name = ("Steve")
#     assert_equal("Steve", student.name())
#   end
#
#   def test_set_student_cohort
#     student = CodeClanStudent.new("Christie", 4, "Ruby")
#     student.cohort = (5)
#     assert_equal(5, student.cohort())
#   end
#
#   def test_can_student_talk
#     student = CodeClanStudent.new("Christie", 4, "Ruby")
#     assert_equal("I can talk!", student.talk())
#   end
#
#   def test_favourite_language
#     student = CodeClanStudent.new("Christie", 4, "Ruby")
#     assert_equal("I love Ruby!", student.favourite_language())
#   end
#
# end

# PART B
#
# class TestSportsTeam < MiniTest::Test
#
#   team = SportsTeam.new("Southend Saxons", ["Sheep", "DFK", "Blue", "Rambo", "Beero"], "Martin Jones")
#
#   def test_team_name
#     team = SportsTeam.new("Southend Saxons", ["Sheep", "DFK", "Blue", "Rambo", "Beero"], "Martin Jones")
#     assert_equal("Southend Saxons", team.team_name())
#   end
#
#   def test_players
#     team = SportsTeam.new("SouthendSaxons", ["Sheep", "DFK", "Blue", "Rambo", "Beero"], "Martin Jones")
#     assert_equal(["Sheep", "DFK", "Blue", "Rambo", "Beero"], team.players())
#   end
#
#   def test_coach
#     team = SportsTeam.new("SouthendSaxons", ["Sheep", "DFK", "Blue", "Rambo", "Beero"], "Martin Jones")
#     assert_equal("Martin Jones", team.coach())
#   end
#
#   def test_set_coach
#     team = SportsTeam.new("SouthendSaxons", ["Sheep", "DFK", "Blue", "Rambo", "Beero"], "Martin Jones")
#     team.coach = "Josh Ward"
#     assert_equal("Josh Ward", team.coach())
#   end
#
#   def test_add_player
#     team = SportsTeam.new("SouthendSaxons", ["Sheep", "DFK", "Blue", "Rambo", "Beero"], "Martin Jones")
#     team.add_player("Sprangers")
#     assert_equal(6, team.players.length)
#   end
#
# def test_check_player
#   team = SportsTeam.new("SouthendSaxons", ["Sheep", "DFK", "Blue", "Rambo", "Beero"], "Martin Jones")
#   assert_equal(true, team.check_player("Beero"))
# end
#
# def test_update_points
#   team = SportsTeam.new("SouthendSaxons", ["Sheep", "DFK", "Blue", "Rambo", "Beero"], "Martin Jones")
#   assert_equal(2, team.update_points("Win"))
# end
#
# end


# EXTENSION:
# Create a method that changes the rental details of a book by taking in the title of
# the book, the student renting it and the date it's due to be returned.

class TestLibrary < MiniTest::Test

  def setup
    @book = {
      title: "The Iliad",
      rental_details: {
        student_name: "Christie",
        date: "29/01/18"
      }
    }
    @library = Library.new([@book])
  end

  def test_library_has_books
    library = Library.new([])
    assert_equal([], library.books)
  end

  def test_get_info_for_title
    book_info = @library.get_info_for_title("The Iliad")
    assert_equal(@book, book_info)
  end

  def test_renter_details
    renter_details = @library.renter_details("The Iliad")
    assert_equal(renter_details, @book[:rental_details])
  end

  def test_add_book_title
    @library.add_book_title("Ready Player One")

    assert_equal(2, @library.books.length)
  end

  def test_update_rental_details
    @library.update_rental_details("The Iliad", "Bob", "28/02/2018")
    assert_equal({student_name: "Bob", date: "28/02/2018"}, @library.renter_details("The Iliad"))
  end


end
