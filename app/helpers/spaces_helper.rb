module SpacesHelper
  def select_city_for_space(f)
    f.select :city, ['Wellington', 'Auckland', 'Christchurch']
  end
  def select_capacity_of_space(f)
    select_tag "space[capacity_range]", options_for_select(['1-5', '5-10', '10-20', '20-50', '50-100', '1-100'], f.object.capacity_range)
  end
end
