require 'spec_helper'
require 'peca/bbs'

RSpec.describe Peca::Bbs::Thread do
  let(:url) { Peca::Bbs::BbsUrl.new('http://jbbs.shitaraba.net/bbs/read.cgi/game/45037/1310263750/') }
  let(:thread) { Peca::Bbs::Thread.new(url) }
  describe '#title' do
    it 'スレッドタイトルが取得できること' do
      expect(thread.title).to eq 'PeerstPlayer テストスレ'
    end
  end
end