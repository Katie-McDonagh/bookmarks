require 'pg'
class Bookmarks 

  def self.all
    array = []
    conn = PG.connect( dbname: 'bookmark_manager' )
    conn.exec( "SELECT * FROM bookmarks" ) do |result|
      result.each do |row|
        array.push(row.values_at('url'))
      end
    end
     array
  end

end