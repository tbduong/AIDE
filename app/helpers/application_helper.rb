module ApplicationHelper

  def image_tag(img , options={})
    path = "#{Rails.root}/app/assets/images/#{img}"
    img = "default_profile.png"  unless img.present?
    p super(img, options)
  end
end

# TODO: does 'path' do anything?  If not you should remove it.
# TODO: remove extra space from line 2
# TODO: single quotes on line 5
