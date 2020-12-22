require 'pg'
class Bookmarks 

  def self.all
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
    conn = PG.connect( dbname: 'bookmark_manager' )
    end
    rs = conn.exec( "SELECT * FROM bookmarks" )
    rs.map { |row| row['url'] }
  end

  def self.create(params)
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
    conn = PG.connect( dbname: 'bookmark_manager' )
    end
    rs = conn.exec( "INSERT INTO bookmarks (url) VALUES ('#{params}');")
  end
end