require 'httparty'

class Recipe
  include HTTParty
#11ed8bb8f5ca7fe5c994f42a9ecae5a3
  base_uri 'https://api.coursera.org/api/catalog.v1/courses'
  default_params fields: "smallIcon, shortDescription", q: "search"
  format :json

  def self.for term
    get("", query: {query: term})["elements"]
  end
end

