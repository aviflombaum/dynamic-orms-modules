class Post

  ATRIBUTES = {
    :id => "INTEGER PRIMARY KEY",
    :title => "TEXT",
    :content => "TEXT",
    :author_name => "TEXT"
  }

  def self.attributes
    ATRIBUTES
  end

  ATRIBUTES.keys.each do |attribute_name|
    attr_accessor attribute_name
  end

  include Persistable::InstanceMethods
  extend Persistable::ClassMethods

end
