# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  v1_major, v1_minor = ver1.split('.').map(&:to_i)
  v2_major, v2_minor = ver2.split('.').map(&:to_i)

  return 1 if v1_major > v2_major
  return -1 if v1_major < v2_major

  return 1 if v1_minor > v2_minor

  v1_minor == v2_minor ? 0 : -1
end
# END
