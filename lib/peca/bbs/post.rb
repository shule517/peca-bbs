class Post
  attr_reader :name, :mail
  def initialize(line_text)
    @no, @name, @mail, @written_at, @body = line_text.split('<>')
  end

  def no
    @no.to_i
  end

  def body
    @body.gsub('<br>', "\n")
  end

  def written_at
    Time.strptime(@written_at.gsub(/\(.*\)/, ''), '%Y/%m/%d %H:%M:%S')
  end
end
