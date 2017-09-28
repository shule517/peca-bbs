require 'spec_helper'
require 'peca/bbs'

RSpec.describe Peca::Bbs::BbsUrl do
  let(:url) { Peca::Bbs::BbsUrl.new('http://jbbs.shitaraba.net/bbs/read.cgi/game/45037/1310263750/') }
  describe 'URL解析' do
    it '#category' do
      expect(url.category).to eq 'game'
    end
    it '#board_id' do
      expect(url.board_id).to eq '45037'
    end
    it '#thead_id' do
      expect(url.thread_id).to eq '1310263750'
    end
  end

  describe 'URL作成' do
    it '#thread_url' do
      expect(url.thread_url).to eq 'http://jbbs.shitaraba.net/bbs/rawmode.cgi/game/45037/1310263750/'
    end
    it '#subjects_url' do
      expect(url.subjects_url).to eq 'http://jbbs.shitaraba.net/game/45037/subject.txt'
    end
    it '#board_info_url' do
      expect(url.board_info_url).to eq 'http://jbbs.shitaraba.net/bbs/api/setting.cgi/game/45037/'
    end
  end
end
