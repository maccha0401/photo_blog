module MeganesHelper
  def new_or_edit_megane_path
    if controller.action_name == "new" || action_name == "confirm"
      confirm_meganes_path
    elsif controller.action_name == "edit"
      megane_path(params[:id])
    end
  end
end
