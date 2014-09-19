class Entry < ActiveRecord::Base

  default_scope { order('entries.created_at DESC') }

  def to_param
    "#{id} #{title}".parameterize
  end

end