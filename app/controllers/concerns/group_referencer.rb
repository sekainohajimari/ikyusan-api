module GroupReferencer
  extend ActiveSupport::Concern

  private

  def set_group
    @group = Group.find(group_id)
  end

  def referenceable?
    set_group unless @group

    raise Error::ApiError.new('No Referenceable') unless @group.referenceable?(user_id: current_user.id)
  end

  def group_id
    raise NotImplementedError
  end
end
