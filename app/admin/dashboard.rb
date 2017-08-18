ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  action_item only: :index do
    link_to('New Article', new_admin_article_path)
  end
  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #

    columns do
      column do
        panel "Map" do
          render partial: "map"
        end
      end
    end

    columns do
      column do
        panel "Recent Articles" do
          ul do
            Article.recent(3).map do |article|
              li link_to(article.title, admin_article_path(article))
            end
          end
        end
      end
    end

    columns do
      column do
        panel "Recent Photos" do
          ul do
            Photo.recent(5).map do |photo|
              li link_to image_tag(photo.image.thumbnail), admin_article_photo_path(photo.article_id,photo)
              li photo.description
            end
          end
        end
      end
    end
  end
end


    # end
