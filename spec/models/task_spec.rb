require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#toggle_complete' do
    it 'should switch to false if it began as true' do
    task = Task.create(complete: true)
    task.toggle_complete!
    expect(task.complete).to eq(false)
  end

    it 'should switch complete to true if it began as false' do
    task = Task.create(complete: false)
    task.toggle_complete!
    expect(task.complete).to eq(true)
    end

  describe '#toggle_favorite' do
      it 'should switch favorite to false if it began as true' do
        task = Task.create(favorite: true)
        task.toggle_favorite!
        expect(task.favorite).to eq(false)
    end

    it 'should switch to favorite to true if it began as true' do
        task = Task.create(favorite: false)
        task.toggle_favorite!
        expect(task.favorite).to eq(true)
      end

      describe '#overdue?' do
        it 'should return true if task is overdue' do
          task = Task.create(deadline: 1.day.ago)
          task.overdue?
          expect(task.overdue?).to eq(true)
        end

        it 'should return false if task is not overdue' do
          task = Task.create(deadline: Time.now)
          task.overdue?
          expect(task.overdue?).to eq(false)
        end

        describe '#increment_priority!' do
          it 'should increment priority by 1' do
            task = Task.create(priority:5)
            task.increment_priority!
            expect(increment_priority).to eq(6)
          end

          it 'should not increment priority beyond 10' do
            task = Task.create(priority:10)
            task.increment_priority!
            expect(increment_priority).to eq(10)
          end

        end
      end
    end
  end
end 
