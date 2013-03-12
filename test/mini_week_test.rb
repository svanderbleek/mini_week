class MiniWeek::ViewHelperTest < ActionView::TestCase
  tests MiniWeek::ViewHelpers

  def test_mini_week_defaults
    assert_equal("", week)
  end
end
