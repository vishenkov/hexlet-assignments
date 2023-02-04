# frozen_string_literal: true

# BEGIN
def count_by_years(hash)
  hash.each_with_object({}) do |obj, acc|
    next if obj[:gender] != 'male'

    year, = obj[:birthday].split('-')

    acc[year] ||= 0
    acc[year] += 1
  end
end
# END
