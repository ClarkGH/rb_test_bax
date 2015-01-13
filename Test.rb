# PURPOSE
  # We hope that this exercise will allow us to evaluate your skills as a developer. The qualities that we pay special attention to are:
    # Simplicity/elegance of design
    # Adherence to good software engineering principles
    # Maintainability (clean, easy to understand code)
    # Effective use of the standard library
    # Use of unit tests

# PACKAGING
  #  Please package the code in a zip or tar archive when you send it to us.
  #  Tell us: 1) which script or Rake task to run in order to produce the desired output
  # from your program and 2) how to run the tests.
  #  Specify what version of Ruby you’re using.
  #  You may use the core and the standard library, but no gems, to implement your solution. If you create any Rake tasks, please specify the version of Rake required. You may use any testing libraries for unit tests (such as RSpec, MiniTest, Test::Unit, etc.) – please specify which gems and versions are required.

######## PseudoCode ########

# Create an application that will collect data from three separate file formats. One with commas, one with spaces, and one with pipes. It will then create 3 differently sorted Outputs.
  # The ordering of each file type will be different.
    #The pipe delimited file lists each record as follows:
      # LastName | FirstName | MiddleInitial | Gender | FavoriteColor | DateOfBirth
    #The comma delimited file looks like this:
      # LastName, FirstName, Gender, FavoriteColor, DateOfBirth
    #The space delimited file looks like this:
      # LastName FirstName MiddleInitial Gender DateOfBirth FavoriteColor

  # The Output will have the following format:
    #LastName FirstName Gender DOB(MM/DD/YYYY format) Color
    #3 different views of the recordset (see sample-output.txt):
      # Output 1 – sorted by gender (females before males) then by last name ascending.
      # Output 2 – sorted by birth date, ascending.
      # Output 3 – sorted by last name, descending.
class Delimiter

  attr_reader :pipe_delimited

  def initialize
    @pipe_delimited = []
  end

  def delimit_file
    @pipe_delimited << "Smith Steve Male 3/3/1985 Red"
  end

end

delimiter = Delimiter.new

p delimiter.delimit_file

delimiter.pipe_delimited == ["Smith Steve Male 3/3/1985 Red"]