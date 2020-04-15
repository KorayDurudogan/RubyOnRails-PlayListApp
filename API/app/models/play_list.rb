class PlayList
  attr_accessor :id, :user_id, :name, :mp3_ids

  def initialize(id)
    @id = id
  end
end
