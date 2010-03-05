require File.join(File.expand_path(File.dirname(__FILE__)),"spec_helper");

describe QueryServer do
  describe "#run" do
    describe "reduce" do
      it "should return value" do
        QueryServer.run do |qs|
          qs.reset!
          kvs = {1 => 1, 2 => 2, 3 => 3}
          resp = qs.run(["reduce", ["(function (keys, values) {return sum(values);})"], kvs.to_a])
          p resp
        end
      end
    end
  end
end
