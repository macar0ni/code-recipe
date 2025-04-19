pattern = /\A\d{3}\s+\d{4}\s+\d{4}\z/
p '090 0000 0000'.match?(pattern)

description = <<~DESC
    Rubyは絶妙、rubyも絶妙、pythonもそう
DESC

p description.scan(/\w+/)
# +は一回以上の繰り返しを意味