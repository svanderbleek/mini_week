module MiniWeek
  class Railtie < Rails::Railtie
    initializer "mini_week.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
