#!/usr/bin/ruby -w
require 'minitest/autorun'
require 'shoulda/context'
require 'watir'
require 'watir-webdriver'


class TestAutoBlog < MiniTest::Unit::TestCase
    
   
    context 'test_case_one' do
        setup do
            #setting up browser before each test
            @browser = Watir::Browser.new
            @url = 'https://autoblog.truecar.com'
        end

        should 'Make Selection Page' do
            puts "Going to #@url"
            @browser.goto "#@url"
            @browser.select_list(:id => 'home_select_make').select 'Lincoln'
            @browser.select_list(:id => 'home_select_model').select 'MKS'
        end

        teardown do
            @browser.close
        end
    end
end
