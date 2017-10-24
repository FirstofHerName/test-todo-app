require 'rails_helper'

RSpec.describe List, type: :model do
  describe 'complete_all_task!' do
    it 'should return true if all task are complete'
    task = Task.create(complete: true)
    list.complete_all_task!
    expect(list.complete).to eq(false)
  end
end
