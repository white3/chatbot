require "spec_helper"

describe Lita::Handlers::Calculator, lita_handler: true do
    let(:robot) { Lita::Robot.new(registry) }

    subject { described_class.new(robot) }

    describe 'routing' do
      # allow extra whitespace
      it { is_expected.to route('Lita calc 999999999999999999 * 2525252') }
      it { is_expected.to route('Lita calc    999999999999999999 * 2525252') }
      # allow mixed casing
      it { is_expected.to route('Lita calc 2020-10') }
      it { is_expected.to route('Lita calc 2020+10') }
      it { is_expected.to route('Lita calc 2020/10') }
      it { is_expected.to route('Lita calc 2020*10') }

      # ignore numbers that don't look like integers
      it { is_expected.to_not route('Lita calc 2020-two') }
      it { is_expected.to_not route('Lita calc 1e4-11') }
    end
end