# I wrote this type to separate the dependency between client and the provider types.
class ProviderInvoker

  def initialize(provider)
    @provider = provider
  end
  
  def getData
    @provider.getData
  end
end
