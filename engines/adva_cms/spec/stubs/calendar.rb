define Calendar do
  belongs_to :site
  has_many :categories, [:roots] => stub_categories

  has_many :events, stub_calendar_events, [:paginate] => stub_calendar_events, [:find, :find_by_id, :find_by_permalink, :build, :new, :create] => stub_calendar_event

  methods :id => 1,
          :type => 'Calendar',
          :path => 'calendar',
          :permalink => 'section',
          :render_options => {:template => nil, :layout => nil},
          :template => 'template',
          :layout => 'layout',
          :content_filter => 'textile-filter',
          :title => 'calendar title',
          :description => 'calendar description',
          :find => true,
          :save => true,
          :update_attributes => true,
          :attributes => true,
          :has_attribute? => true,
          :destroy => true

  instance :calendar
end

