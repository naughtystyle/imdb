class MovieFilterQuery
  def initialize(category:, page: nil)
    @category = category
  end

  def relation
    Movie.
      joins(:category).
      where(categories: { name: category }).
      page(page)
  end

  alias_method :results, :relation

  private

  attr_reader :category, :page
end
