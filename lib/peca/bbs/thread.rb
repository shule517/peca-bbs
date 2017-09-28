require 'faraday'

module Peca
  module Bbs
    class Thread
      def initialize(url)
        @url = url
      end

      def body
        @body ||= Faraday.get(@url.thread_url).body.encode('UTF-8', 'EUC-JP')
      end

      def title
        body.each_line.first.split('<>')[5]
      end
    end
  end
end
