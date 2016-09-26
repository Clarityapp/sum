defmodule Convert do
	

# Need to figure out more elegant/correct way to round instead of the below.
# Refactoring is fun!!	
  def round_to(val, precision) when is_float(val) do
    Float.round(val, precision)
  end

  def to_nearest_tenth(val) when is_integer(val) or is_float(val) do
    round_to(val, 2)
  end

end

