require 'spec_helper'
require 'peca/bbs'

RSpec.describe Peca::Bbs do
  let(:bbs) { Bbs.new('http://jbbs.shitaraba.net/bbs/read.cgi/game/45037/1310263750/') }
  describe '' do
    it '#category' do
      expect(bbs.category).to eq 'game'
    end
    it '#board_id' do
      expect(bbs.board_id).to eq 45037
    end
    it '#thead_id' do
      expect(bbs.thread_id).to eq 1310263750
    end
  end

  # スレッド一覧
  # 'http://jbbs.shitaraba.net/game/45037/subject.txt'
  # "http://jbbs.shitaraba.net/#{category}/#{board}/subject.txt"

  # スレ
  # 'http://jbbs.shitaraba.net/bbs/rawmode.cgi/game/45037/1310263750/'
  # "http://jbbs.shitaraba.net/bbs/rawmode.cgi/#{category}/#{board}/#{thead_id}/"

  # 掲示板設定情報
  # 'http://jbbs.shitaraba.net/bbs/api/setting.cgi/game/45037/'
  # "http://jbbs.shitaraba.net/bbs/api/setting.cgi/#{category}/#{board}/"

  xdescribe 'url' do
    it '#threads_url' do
      expect(bbs.threads_url).to eq 'http://jbbs.shitaraba.net/bbs/rawmode.cgi/game/45037/1310263750/'
    end
    it '#thread_url' do
      expect(bbs.thread_url).to eq 'http://jbbs.shitaraba.net/game/45037/subject.txt'
    end
    it '#board_info_url' do
      expect(bbs.board_info_url).to eq 'http://jbbs.shitaraba.net/bbs/api/setting.cgi/game/45037/'
    end
  end
end
