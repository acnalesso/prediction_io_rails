$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "prediction_io_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "prediction_io_rails"
  s.version     = PredictionIORails::VERSION.dup
  s.authors     = ["Antonio C Nalesso", "Simon Chan"]
  s.email       = ["acnalesso@yahoo.co.uk", "simon@email.predictionio.org"]
  s.homepage    = "http://prediction.io/"
  s.summary     = "PredictionIO is a prediction server for building smart applications."

  s.description = "You can make predictions through PredictionIO just as
                   you would filter data using a database server.
                   With PredictionIO, you can write apps
                   that predict user behaviors based on solid data science
                   using your choice of state-of-the-art machine learning algorithms
                   without worrying about scalability"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  ##
  # sqlite3 uses filesystem locks to make sure
  # only one user is accessing the db at a time.
  #
  s.add_development_dependency "mongoid"
  s.add_development_dependency "rspec"
  s.add_development_dependency "capybara"
end
