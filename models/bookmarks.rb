require 'pg'
class Bookmarks 

  def self.all
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
    conn = PG.connect( dbname: 'bookmark_manager' )
    end
    rs = conn.exec( "SELECT * FROM bookmarks" )
    rs.map { |row| row['title'] }
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