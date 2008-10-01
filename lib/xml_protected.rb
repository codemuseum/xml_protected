# Usage: xml_protected :attr1, :attr2, :attr3
module XmlProtected

  def self.included(klass)
    klass.extend ActMethods
  end

  module ActMethods
    
    def xml_protected(*attributes)
      write_inheritable_attribute("xml_protected_attrs", Set.new(attributes.map(&:to_s)) + (protected_xml_attributes || []))
      
      # only need to define these once on a class
      unless included_modules.include?(InstanceMethods)
        alias_method :xml_protected_to_xml, :to_xml
        include InstanceMethods
      end
    end

    # Returns an array of all the attributes that have been protected (excluded) from default to_xml output.
    def protected_xml_attributes # :nodoc:
      read_inheritable_attribute("xml_protected_attrs")
    end
    
  end

  module InstanceMethods
    def to_xml(options = {})
      xml_protected_to_xml(
        options.merge(
          :except => self.class.protected_xml_attributes + (options[:except] || [])
      ))
    end
  end
end