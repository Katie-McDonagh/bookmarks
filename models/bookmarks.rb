require 'pg'
class Bookmarks 

  def self.all
    conn = PG.connect( dbname: 'bookmark_manager' )
    rs = conn.exec( "SELECT * FROM bookmarks" )
    rs.map { |row| row['url'] }
  end


end