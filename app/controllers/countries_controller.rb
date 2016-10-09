class CountriesController < ApplicationController

  def index
  end

  def show
    @country = Country.find(params[:id])
    set_top_concerns(@country)
    set_products_by_section(@country)
  end

  private

  def assemble_wildlife_product_info(country)
  end

  def set_top_concerns(country)
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

  def set_products_by_section(country)
    # we should be assembling product groups into the sections but for the prototype
    # product groups are set up like sections
    country.product_groups.each do |product_group|
      case product_group.name
      when 'Food'
        @food_products = product_group.products
      when 'Art & Decor'
        @art_decor_products = product_group.products
      when 'Clothing & Accessories'
        @clothing_accessories_products = product_group.products
      when 'Animals'
        @animals_products = product_group.products
      when 'Plants'
        @plants_products = product_group.products
      end
    end
  end
end
