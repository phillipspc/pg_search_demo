class PagesController < ApplicationController
  def search
    @results = PgSearch.multisearch(params[:query]).group_by(&:searchable_type)
  end
end
