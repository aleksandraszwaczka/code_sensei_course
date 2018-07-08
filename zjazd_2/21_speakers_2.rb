class Speaker
  def play(track_name)
    puts "Playing: #{track_name}"
  end
end

class MusicBox < Speaker
  def play
    super("Locked Out Of Haeaven")
  end
end
