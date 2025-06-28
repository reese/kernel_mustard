# frozen_string_literal: true

require "test_helper"

class Kernel::TestMustard < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::KernelMustard::VERSION
  end

  def test_it_raises_for_nil
    assert_raises { nil.must! }
  end

  def test_it_raises_with_message_for_nil
    message = "Because it was Professor Plum, in the Library, with the Candlestick"
    begin
      nil.must!(message)
    rescue TypeError => e
      assert_equal(e.message, message)
    else
      flunk
    end
  end

  def test_it_falls_back_to_default_for_nil
    assert_equal("test", nil.must_or { "test" })
  end

  def test_it_does_not_fall_back_for_non_nil
    assert_equal("foo", "foo".must_or { "bar" })
  end

  def test_it_does_not_raise_for_non_nil
    begin
      0.must!
    rescue
      flunk("Kernel#must! raised on a non-nil value.")
    end
  end
end
