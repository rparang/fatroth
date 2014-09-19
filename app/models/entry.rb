class Entry < ActiveRecord::Base

  default_scope { order('entries.created_at DESC') }

end