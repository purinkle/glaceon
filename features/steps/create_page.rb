class CreatePage < Spinach::FeatureSteps
  include Actors
  include Paths
  include Sessions

  Then 'the "Title" field is shown' do
    should have_field('Title')
  end

  And 'the "Create Page" button is shown' do
    should have_button('Create Page')
  end

  And 'the "Cancel" link is shown' do
    should have_link('Cancel')
  end
end
