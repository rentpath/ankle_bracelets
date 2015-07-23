module PossessiveHelper

  def possessive(word)
    return if word.blank?
    if word.end_with?('s')
      suffix = "'"
    else
      suffix = "'s"
    end
    word << suffix
  end

end
