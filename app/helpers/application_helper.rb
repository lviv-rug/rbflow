module ApplicationHelper
  # Flash messages as html
  def flash_messages(messages = {})
    messages = flash unless flash.empty?
    messages.collect{ |kind, message| flash_message(message, kind) }.join.html_safe
  end
  
  def flash_message(message, kind = :notice)
    content_tag :div, message, :class => "message #{kind.to_s}"
  end
  
  def markdown(source)
    source.blank? ? "" : RDiscount.new(source).to_html.html_safe
  end
  
  def avatar_url(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      default_url = "#{root_url}images/guest.png"
      if !user.email.blank?
        gravatar_id = Digest::MD5::hexdigest(user.email).downcase  
        "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"
      else
        default_url
      end
    end
  end
  
  def icon_tag(icon)
    content_tag :i, nil, :class => "icon #{icon}"
  end
  
  def years_tag(from = 2012, to = Date.current.year)
    if from != to
      "#{from}&mdash;#{to}".html_safe
    else
      from.to_s
    end
  end
end
