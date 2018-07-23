require "rpi_gpio"

module Aquaman
  class RelayController

    RELAY_CONTROL_PIN = 3

    def initialize
      RPi::GPIO.set_numbering :board
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

    def shutdown
      RPi::GPIO.reset
    end

  end
end
