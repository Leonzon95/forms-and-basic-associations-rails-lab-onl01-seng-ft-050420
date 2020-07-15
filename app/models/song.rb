class Song < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist
  has_many :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end 

  def genre_name=(name)
    self.genre = Genre.find_by(name: name)
  end

  def genre_name
    self.genre ? self.genre.name : nil
  end

  def notes_1=(note)
    if !note.empty?
      n = Note.new(content: note)
      self.notes << n
    end
  end

  def notes_1
    self.notes
  end

  def notes_2=(note)
    if !note.empty?
      n = Note.new(content: note)
      self.notes << n
    end
  end

  def notes_2
    self.notes
  end

end
