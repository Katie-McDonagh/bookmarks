require 'pg'
class Bookmarks

  attr_reader :id, :title, :url
  
  def initialize(id, title, url)
    @id = id,
    @title = title,
    @url = url
  end

  def self.all
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
    conn = PG.connect( dbname: 'bookmark_manager' )
    end
    rs = conn.exec( "SELECT * FROM bookmarks" )
    rs.map do |row| 
        Bookmarks.new(row["id"], row['title'], row['url'])
    end
  end

  def self.create(title, url)
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
    conn = PG.connect( dbname: 'bookmark_manager' )
    end
    conn.exec( "INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}');")
  end
end