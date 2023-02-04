# frozen_string_literal: true

# BEGIN
def build_query_string(params)
  result = []

  params.to_a.sort_by { |arr| arr[0] }.each do |arr|
    key, value = arr
    result << "#{key}=#{value}"
  end

  result.join('&')
end
# END
