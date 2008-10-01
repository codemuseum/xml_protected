Gem::Specification.new do |s|
  s.name = %q{xml_protected}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["ThriveSmart, LLC"]
  s.date = %q{2008-10-01}
  s.description = %q{Keeps specified attributes of a model out of to_xml.  Do so by aliasing to_xml, and automatically sending in the correct :excludes to the original to_xml method, e.g. :excludes => [:attr1, :attr2, ...]}
  s.email = %q{developers@thrivesmart.com}
  s.extra_rdoc_files = ["README.textile", "LICENSE"]
  s.files = ["LICENSE", "README.textile", "Rakefile", "lib/xml_protected.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://www.github.com/thrivesmart/xml_protected}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{xml_protected}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Keeps specified attributes of a model out of to_xml.  Do so by aliasing to_xml, and automatically sending in the correct :excludes to the original to_xml method, e.g. :excludes => [:attr1, :attr2, ...]}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
