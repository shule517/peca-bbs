
class Bbs
  HOST = "jbbs.shitaraba.net"
  attr_reader :category, :board_id, :thread_id
  def initialize(url)
    matches = url.match(%r{http://jbbs.shitaraba.net/bbs/read.cgi/(\w+)/(\d+)/(\d+)/})
    _, @category, @board_id, @thread_id = matches.to_a
  end

  def thread_url
    # 'http://jbbs.shitaraba.net/bbs/rawmode.cgi/game/45037/1310263750/'
    "http://#{HOST}/bbs/rawmode.cgi/#{category}/#{board_id}/#{thread_id}/"
  end

  def subjects_url
    # 'http://jbbs.shitaraba.net/game/45037/subject.txt'
    "http://#{HOST}/#{category}/#{board_id}/subject.txt"
  end

  def board_info_url
    # 'http://jbbs.shitaraba.net/bbs/api/setting.cgi/game/45037/'
    "http://#{HOST}/bbs/api/setting.cgi/#{category}/#{board_id}/"
  end
end
