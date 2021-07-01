# frozen_string_literal: true

parts = %w[forehead eye nose mouth]
face = parts.map do |part|
  lines = File.readlines(__dir__ + "/data/#{part}.txt", chomp: true)
  lines.sample
end

faces_list = Dir.glob("#{__dir__}/faces/*.txt")

time_now = Time.now
time = time_now.strftime('%H:%M')
date = time_now.strftime('%d.%m.%Y')

new_face = File.new(__dir__ + "/faces/face_#{date}_#{time}.txt", 'w')
new_face.puts face.join("\n")
new_face.close
