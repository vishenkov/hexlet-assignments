# frozen_string_literal: true

require_relative '../lib/url'

yandex_url = 'http://yandex.ru?key=value&key2=value2'

url = Url.new(yandex_url)
p url.query_params
p Url.new(yandex_url) == url
