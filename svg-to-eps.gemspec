Gem::Specification.new do |s|
  s.name        = 'svg-to-eps'
  s.version     = '0.0.2'
  s.license     = 'GPL3'
  s.summary     = 'SVG to EPS converter (command line and lib)'
  s.description = 'SVG to EPS converter. Requires inkscape! lib and command line tool are included.'
  s.authors     = ['Rei Kagetsuki']
  s.email       = 'zero@genshin.org'
  s.homepage    = 'http://www.github.com/Genshin/svg-to-eps'

  s.files         = `git ls-files`.split("\n")
  s.require_path = 'lib'
  s.executables = ['svg-to-eps']

  s.requirements << 'inkscape'
end
