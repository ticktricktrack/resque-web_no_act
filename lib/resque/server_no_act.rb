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
  end
end
