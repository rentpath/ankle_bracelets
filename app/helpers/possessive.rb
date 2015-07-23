module Possessive
  def possessive
    return if self.blank?
    if self.end_with?('s')
      suffix = "'"
    else
      suffix = "'s"
    end
    self << suffix
  end

end

class String
  include Possessive
end
