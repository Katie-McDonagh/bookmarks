require 'pg'



def clear_table
  conn = PG.connect( dbname: 'bookmark_manager_test' )
  conn.exec( "TRUNCATE TABLE bookmarks;" )
end

def add_to_table
  conn = PG.connect( dbname: 'bookmark_manager_test' )
  conn.exec( "INSERT INTO bookmarks (url) VALUES ('www.twitter.com'), ('www.newyorker.com')" )
end