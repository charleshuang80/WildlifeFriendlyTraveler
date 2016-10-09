class CountriesController < ApplicationController

  def index
  end

  def show
    @country = Country.find(params[:id])
    get_top_concerns(@country)
  end

  private

  def assemble_wildlife_product_info(country)
  end

  def get_top_concerns(country)
    @top_concerns = []
    country.country_issues.each_with_index do |issue, index|
      if issue.top_concern
        if issue.issueable_type == 'AnimalGroup'
          @top_concerns << country.animal_groups[index]
        else
          # for our prototype there are no ProductGroup top concerns
        end
      end
    end
    @top_concerns
  end
end
