module ApplicationHelper

  def image_tag(img , options={})
    path = "#{Rails.root}/app/assets/images/#{img}"
    img = "default_profile.png"  unless img.present?
    p super(img, options)
  end
end
