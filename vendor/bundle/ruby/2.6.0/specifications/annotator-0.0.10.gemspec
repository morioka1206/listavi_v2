# -*- encoding: utf-8 -*-
# stub: annotator 0.0.10 ruby lib

Gem::Specification.new do |s|
  s.name = "annotator".freeze
  s.version = "0.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tech-Angels".freeze, "Kacper Cie\u015Bla".freeze]
  s.date = "2013-09-22"
  s.description = "".freeze
  s.email = ["kacper.ciesla@tech-angels.com".freeze]
  s.homepage = "https://github.com/tech-angels/annotator".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Annotate your models and keep your comments about fields.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 3.0"])
    else
      s.add_dependency(%q<activerecord>.freeze, [">= 3.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 3.0"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 3.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 3.0"])
  end
end
