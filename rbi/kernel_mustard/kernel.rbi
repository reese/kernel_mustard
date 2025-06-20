module Kernel
  sig { params(message: T.nilable(String)).returns(T.self_type) }
  def must!(message = nil); end

  sig { params(blk: T.proc.returns(T.self_type)).returns(T.self_type) }
  def must_or(&blk); end
end
