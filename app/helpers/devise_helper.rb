# frozen_string_literal: true

module DeviseHelper
  # Override default devise error messages for customization
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:div, msg) }.join

    html = <<-HTML
    <div id="error_explanation" class="alert alert-warning" role="alert">
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end
