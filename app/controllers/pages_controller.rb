require 'open-uri'

class PagesController < ApplicationController
  # '/about'
  def about
    # By default in Rails
    url = 'https://dictionary.lewagon.com/cat'
    # url = 'https://dictionary.lewagon.com/WHATEVER_THE_USER_SENT_FROM_FORM'
    json = URI.open(url).read
    results = JSON.parse(json)
    @found = results['found']

    # render about.html.erb
  end

  # '/contact'
  def contact
    # Tomorrow's lecture
    # @members = Member.all
    # @members = Member.where(name: params[:member])
    # @members = Member.where('name LIKE ?', "#%{params[:member]}%")
    #
    @members = ['doug', 'celso', 'noemi', 'leo', 'james']
    # when we send info from a form, we have access to the info in the params
    if params[:member].present?
      @members = @members.select do |name|
        name.include?(params[:member])
      end
    end
    # render contact.html.erb
  end

  # '/'
  def home
  end
end
