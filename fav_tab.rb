# -*- coding: utf-8 -*-

require File.expand_path(File.join(File.basename(__FILE__), '..', 'plugin', "gui", "gui"))

Plugin.create :fav_tab do
  tab :fav_tab, "favorite" do
    set_icon MUI::Skin.get("fav.png")
    timeline :fav_tab end

  on_favorite do |service, fav_by, messege|
    timeline(:fav_tab) << messege end
end
