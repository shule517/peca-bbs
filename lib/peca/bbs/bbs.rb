
class Bbs
  attr_reader :category, :board_id, :thread_id
  def initialize(url)
    # 'http://jbbs.shitaraba.net/bbs/read.cgi/game/45037/1310263750/'
    @category = 'game'
    @board_id = 45037
    @thread_id = 1310263750
  end
end