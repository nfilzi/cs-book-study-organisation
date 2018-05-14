module Shout
  refine String do
    def shout
      self.upcase + "!!!"
    end
  end
end
