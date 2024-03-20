describe Relaton::Logger::Config do
  it "configure" do
    Relaton::Logger.configure do |conf|
      conf.logger_pool = [:logger1]
      conf.logger_pool << :logger2
    end
    expect(Relaton::Logger.configuration.logger_pool.loggers).to eq %i[logger1 logger2]
  end
end
