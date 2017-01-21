require 'zarinpal/version'
require 'zarinpal/options'
require 'zarinpal/payment_request'
require 'zarinpal/response'
require 'zarinpal/payment_verification'
require 'zarinpal/errors'

# A library to send and verify transactions with Zaripal
#
# @see http://zarinpal.com/
# @author {http://github.com/arashm Arash Mousavi}
module Zarinpal
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration
  end

  # Configures the gem
  #
  # @example
  #   Zarinpal.configure do |config|
  #     config.merchant_id  = 'XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX'
  #     config.callback_url = 'http://example.com/call_back'
  #     config.client       = 'https://de.zarinpal.com/pg/services/WebGate/wsdl'
  #     config.proxy        = 'http://example.com:3128'
  #   end
  class Configuration
    attr_accessor :merchant_id, :callback_url, :client, :proxy

    def initialize
      @client = 'https://de.zarinpal.com/pg/services/WebGate/wsdl'
    end

  end
end
