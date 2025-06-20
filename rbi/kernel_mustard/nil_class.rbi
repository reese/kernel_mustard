class NilClass
  sig { params(message: T.nilable(String)).returns(T.noreturn) }
  def must!(message = nil); end

  sig { type_parameters(:T).params(blk: T.proc.returns(T.type_parameter(:T))).returns(T.type_parameter(:T)) }
  def must_or(&blk); end
end
