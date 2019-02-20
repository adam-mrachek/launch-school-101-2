def initialize_lights(number_of_lights)
  lights = {}
  1.upto(number_of_lights) do |number|
    lights[number] = 'off'
  end
  lights
end

def light_switcher(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(number_of_lights) do |light|
    lights.each_pair do |position, state|
      if position % light == 0
        lights[position] = (state == 'off') ? 'on' : 'off'
      end
    end
  end

  lights.select { |key, value| value == 'on'}.keys
end

p light_switcher(5)
p light_switcher(10)