# Small addition allowing to do Service.call(args) for services that inherit from it
class ApplicationService
  def self.call(*args, &block)
    new(*args, &block).call
  end
end
