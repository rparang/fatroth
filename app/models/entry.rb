class Entry < ActiveRecord::Base
  validates :title, :description, :body, :slug, presence: true

  default_scope { order('entries.created_at DESC') }

  def to_param
    # "#{id} #{title}".parameterize
    # The to_param method gets called when passing in  a model into
    # a URL helper like: <%= link_to entry.title, entry %> in the view. By 
    # default to_param returns the id (as a string rather than Fixnum). More
    # information here http://blog.teamtreehouse.com/creating-vanity-urls-in-rails

    slug
  end

end