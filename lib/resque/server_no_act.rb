if defined? Encoding
  Encoding.default_external = Encoding::UTF_8
end

module Resque
  class ServerNoAct < Server

    def show_access_denied
      erb File.read(File.join(File.dirname(__FILE__), "server_no_act/views/no_act.erb"))
    end

    get "/no_act" do
      show_access_denied
    end

    # Resque::Server Base
    post "/queues/:id/remove" do
      redirect u('no_act')
    end

    post "/failed/clear" do
      redirect u('no_act')
    end

    post "/failed/requeue/all" do
      redirect u('no_act')
    end

    get "/failed/requeue/:index/?" do
      redirect u('no_act')
    end

    get "/failed/remove/:index/?" do
      redirect u('no_act')
    end

    # Resque::Retry
    post '/retry/:timestamp/remove' do
      redirect u('no_act')
    end

    post '/retry/:timestamp/jobs/:id/remove' do
      redirect u('no_act')
    end

    # Resque::Scheduler
    post "/schedule/requeue" do
      redirect u('no_act')
    end
    post "/delayed/queue_now" do
      redirect u('no_act')
    end

    post "/delayed/clear" do
      redirect u('no_act')
    end

    # Resque::Cleaner
    post "/cleaner_exec" do
      redirect u('no_act')
    end

    get "/cleaner_dump" do
      redirect u('no_act')
    end

    # Resque::History
    post "/history/clear" do
      redirect u('no_act')
    end
  end
end
