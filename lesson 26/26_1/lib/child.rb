class Child < Parent

  attr_reader :name

  def initialize(name)
    super
  end
  def obedience
    false
  end
end

