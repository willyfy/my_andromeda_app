ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
  # test/test_helper.rb
  
   class ActiveSupport::TestCase
     # ... autres configurations
       
     # Assurez-vous d'inclure les helpers de routes pour tous les tests
     include Rails.application.routes.url_helpers 
   end

end
