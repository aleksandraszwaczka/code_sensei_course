class Speaker
  def play(track_name)
    puts "Playing #{track_name}"
  end
end

class BluetoothSpeaker < Speaker
  def play(track_name)
    puts "Streaming..."
    super(track_name + " 2")
  end
end
BluetoothSpeaker.new.play("Cake by the Ocean")
