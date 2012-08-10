class ShowPage < Spinach::FeatureSteps
  include Actors
  include Paths
  include Pages

  Then 'there is a title' do
    should have_selector 'h2', text: 'What a Strange Person'
  end

  And 'there is some content' do
    should have_selector 'p', text: 'Well, Mercia\'s a temperate zone! Oh, ow!'
  end
end
