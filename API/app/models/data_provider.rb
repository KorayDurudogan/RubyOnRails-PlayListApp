require 'csv'

# base provider type for getting data from csv files. All concrete providers must inherit this type.
class DataProvider
  include ActiveModel::Conversion

  def initialize(path)
    @path = File.expand_path(path)
  end

  protected def getData
    CSV.read(@path)
  end
end
