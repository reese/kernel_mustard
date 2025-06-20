# frozen_string_literal: true

module Kernel
  def must!(message = nil); self; end

  def must_or(&blk); self; end
end

class NilClass
  def must!(message = nil)
    raise TypeError, message || "Called `not_nil!` on nil"
  end

  def must_or(&blk); yield; end
end
