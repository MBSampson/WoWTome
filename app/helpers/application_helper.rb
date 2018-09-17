module ApplicationHelper
  def display_authentication_options
    content_tag :ul, class: 'navbar-nav' do
      if current_user
        concat link_to 'Settings', edit_user_registration_url, class: 'nav-link'
        concat link_to('Sign Out', destroy_user_session_url, method: :delete, class: 'nav-link')
      else
        concat link_to 'Create Account', new_user_registration_url, class: 'nav-link'
        concat link_to('Sign In', new_user_session_url, class: 'nav-link')
      end
    end
  end
end
