# frozen_string_literal: true

require "rpi_gpio"
require "aquaman-controller/version"
require "aquaman-controller/relay"
require "aquaman-controller/sensor"

module AquamanController

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
