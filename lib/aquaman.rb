# frozen_string_literal: true

require "rpi_gpio"
require "aquaman/version"
require "aquaman/relay"
require "aquaman/sensor"

module Aquaman

  def self.setup
    RPi::GPIO.set_numbering(:board)
  end

  def self.shutdown
    RPi::GPIO.reset
  end

  def self.sensor
    @sensor ||= Sensor.new
  end

  def self.relay
    @relay ||= Relay.new
  end

end
