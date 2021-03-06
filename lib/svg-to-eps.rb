
# actual converter (just calls inkscape...)
class SVGtoEPS
  def self.convert(input, output = nil)
    output = input.to_s.gsub(/.svg/, '.eps') if output.nil?
    puts "入[#{input}] 出[#{output}]"
    system "inkscape --export-text-to-path --without-gui --file=#{input.to_s} --export-eps=#{output.to_s}"
  end
end
