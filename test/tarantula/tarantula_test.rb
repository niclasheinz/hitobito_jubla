require "test_helper"
require "relevance/tarantula"

class TarantulaTest < ActionController::IntegrationTest
  # Load enough test data to ensure that there's a link to every page in your
  # application. Doing so allows Tarantula to follow those links and crawl
  # every page.  For many applications, you can load a decent data set by
  # loading all fixtures.

  self.reset_fixture_path File.expand_path("../../../spec/fixtures", __FILE__)


  def test_tarantula_as_federal_board_member
    crawl_as(people(:top_leader))
  end

  def crawl_as(person)
    person.password = 'foobar'
    person.save!
    post '/users/sign_in', person: {email: person.email, password: 'foobar'}
    follow_redirect!

    tarantula_crawl(self)
  end
end