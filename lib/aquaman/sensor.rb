# frozen_string_literal: true

module Aquaman
  class Sensor

    SENSOR_PIN = 7

    def initialize
      RPi::GPIO.setup(SENSOR_PIN, as: :input)
    end

    # Where 1.0 = wet and 0.0 = dry
    def reading
      RPi::GPIO.high?(SENSOR_PIN) ? 0.0 : 1.0
    end

  end
end
