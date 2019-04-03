# rubocop:disable Metrics/AbcSize
def task_2(str)
  str.split("\n")
  a = str.upcase.scan(/[A-Z]{4}.[0-9].[A-Z]{1,8}/)
  d = str.scan(%r{\w{2}/\w{3}/\d{4}:\d{2}:\d{2}:\d{2}\D+\d{4}})
  i = str.scan(/\d+.\d+.\d+.\d+/)
  b = "#{d[0]} FROM: #{i[0]} TO: /#{a[0]}"
  c = "#{d[1]} FROM: #{i[3]} TO: /#{a[1]}"
  w = "#{d[2]} FROM: #{i[3]} TO: /#{a[2]}"
  pp = [b, c, w]
  a.to_s.length < 5 ? '' : pp
end
# rubocop:enable Metrics/AbcSize
