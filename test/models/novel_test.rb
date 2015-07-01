require 'test_helper'

class NovelTest < ActiveSupport::TestCase
  test "does not save without a title" do
    @novel_without_title = Novel.new(title: nil)
    assert @novel_without_title.save == false
  end
end
