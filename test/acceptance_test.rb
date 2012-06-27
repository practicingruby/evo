require_relative "../evo"

require 'capybara/dsl'
require 'minitest/autorun'

Capybara.app = Sinatra::Application
set :environment, 'test'

describe 'main application' do
  include Capybara::DSL

  describe 'GET /' do
    it "must be succcessful" do
      visit '/'

      p1_cards = all("label.player1").map { |e| e.text }
      p2_cards = all("label.player2").map { |e| e.text }

      choose p1_cards[1]
      choose p2_cards[2]

      click_button "Kill"

      assert page.has_content?("1, 2")
    end
  end
end
