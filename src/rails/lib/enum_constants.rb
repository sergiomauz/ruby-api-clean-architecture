module EnumConstants
  def all
    constants.map { |const| [const, const_get(const)] }.to_h
  end

  def values
    constants.map { |const| const_get(const) }
  end

  def names
    constants.map(&:to_s)
  end
end
