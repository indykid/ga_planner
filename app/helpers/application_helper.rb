module ApplicationHelper
  def current_page?(check_controller, check_action)
    if check_controller == controller.controller_name.to_s.downcase && check_action == controller.action_name.to_s.downcase
      "selected"
    else
      "unselected"
    end
  end
end
