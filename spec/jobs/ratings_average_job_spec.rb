require "rails_helper"

RSpec.describe RatingsAverageJob, type: :job do
  include ActiveJob::TestHelper

  describe ".update" do
    it "enqueues the job" do
      movie = create(:movie)

      expect do
        RatingsAverageJob.update(movie)
      end.to change(ActiveJob::Base.queue_adapter.enqueued_jobs, :size).by(1)
    end

    after do
      clear_enqueued_jobs
      clear_performed_jobs
    end
  end
end
