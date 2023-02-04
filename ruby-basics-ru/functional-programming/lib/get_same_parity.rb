# frozen_string_literal: true

# BEGIN
def get_same_parity(arr)
  arr.filter { |num| num % 2 == arr[0] % 2 }
end
# END
