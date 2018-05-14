def method_missing(m, *args, &block)
  if m == :to_ary || m == :to_hash
    super
  else
    raise NameError, "What the fuck is this \"#{m.to_s}\" method supposed to do mate?"
  end
end
