module Zarinpal
  def self.savon_options
    {}.tap do |hash|
      hash[:pretty_print_xml] = true
      hash[:wsdl]   = Zarinpal.configuration.client
      hash[:proxy]  = Zarinpal.configuration.proxy if Zarinpal.configuration.proxy
    end
  end
end
