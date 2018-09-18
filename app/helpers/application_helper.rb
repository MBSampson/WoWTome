module ApplicationHelper
  def display_authentication_nav_items
    content_tag :ul, class: 'navbar-nav' do
      if current_user
        concat link_to 'Settings', edit_user_registration_url, class: 'nav-link'
        concat link_to('Logout', destroy_user_session_url, method: :delete, class: 'nav-link')
      else
        concat link_to 'Create Account', new_user_registration_url, class: 'nav-link'
        concat link_to('Login', new_user_session_url, class: 'nav-link')
      end
    end
  end
end
