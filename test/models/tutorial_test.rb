require 'test_helper'

class TutorialTest < ActiveSupport::TestCase

  def setup
    @tutorial = tutorials(:vagrant_intro)
  end

  test 'should be valid?' do
    assert @tutorial.valid?
  end

  test 'name should be present' do
    @tutorial.name = ''
    assert_not @tutorial.valid?
  end

  test 'content should be present' do
    @tutorial.content = ''
    assert_not @tutorial.valid?
  end
end
