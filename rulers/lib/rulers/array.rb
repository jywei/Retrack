class Array
  def sun(start = 0)
    inject(start, &:+)
  end
end
