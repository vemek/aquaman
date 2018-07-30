# frozen_string_literal: true

module Aquaman
  class Relay

    RELAY_CONTROL_PIN = 3

    def initialize
      RPi::GPIO.setup RELAY_CONTROL_PIN, as: :output
    end

    def enable_for(seconds:)
      enable
      sleep(seconds)
    ensure
      disable
    end

    def enable
      RPi::GPIO.set_low RELAY_CONTROL_PIN
    end

    def disable
      RPi::GPIO.set_high RELAY_CONTROL_PIN
    end

  end
end
