require 'rspec'
require 'peca/bbs'
require 'time'

RSpec.describe Post do
  let(:post) { Post.new(line_text) }

  describe '#parse' do
    context '正常系' do
      let(:line_text) { '290<>名無しさん<>sage<>2017/09/29(金) 02:08:47<>テスト！<br>２行目<br>おわり'}
      it 'レスの情報が取得できること' do
        expect(post.no).to eq 290
        expect(post.name).to eq '名無しさん'
        expect(post.mail).to eq 'sage'
        expect(post.written_at).to eq Time.strptime('2017/09/29 02:08:47', '%Y/%m/%d %H:%M:%S')
        expect(post.body).to eq "テスト！\n２行目\nおわり"
      end
    end

    # describe '#name' do
    #   context'名前に色が指定されていない場合' do
    #     let(:line_text) { '1<><font color=#0099ff>シュール★</font><><>2011/07/10(日) 11:09:10<>PeerstPlayerの書き込みテストなど<br>自由に使ってください＾ｑ＾<>PeerstPlayer テストスレ<>' }
    #     it 'should do something' do
    #       expect(post.name).to eq 'シュール★'
    #       expect(post.name_raw).to eq '<font color=#0099ff>シュール★</font>'
    #     end
    #   end
    #   context'名前に色が指定されている場合' do
    #     let(:line_text) { '1<><font color=#0099ff>シュール★</font><><>2011/07/10(日) 11:09:10<>PeerstPlayerの書き込みテストなど<br>自由に使ってください＾ｑ＾<>PeerstPlayer テストスレ<>' }
    #     it 'should do something' do
    #       expect(post.name).to eq 'シュール★'
    #       expect(post.name_raw).to eq '<font color=#0099ff>シュール★</font>'
    #     end
    #   end
    # end
    #
    # describe '#body' do
    #   context'本文に<br>がない場合' do
    #     let(:line_text) { '292<>名無しさん<>sage<>2017/09/29(金) 02:17:06<>１行目<br>&lt;br&gt;<br>３行目<><>' }
    #     it '改行コードと<br>の区別がつくこと' do
    #       expect(post.body).to eq <<~TEXT
    #         １行目
    #         <br>
    #         ３行目
    #       TEXT
    #     end
    #   end
    #   context'本文に<br>がある場合' do
    #     let(:line_text) { '292<>名無しさん<>sage<>2017/09/29(金) 02:17:06<>１行目<br>&lt;br&gt;<br>３行目<><>' }
    #     it '改行コードと<br>の区別がつくこと' do
    #       expect(post.body).to eq <<~TEXT
    #         １行目
    #         <br>
    #         ３行目
    #       TEXT
    #     end
    #   end
    # end
  end
end
