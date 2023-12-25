# frozen_string_literal: true

describe 'R18n::Desktop' do
  include R18n::Helpers

  before do
    R18n.reset!
  end

  describe '.system_locale' do
    subject { R18n::I18n.system_locale }

    it { is_expected.to be_an_instance_of String }
    it { is_expected.not_to be_empty }
  end

  describe '.from_env' do
    describe 'loading I18n from system environment' do
      before do
        R18n.from_env
      end

      describe 'r18n' do
        subject { r18n }

        it { is_expected.to be_an_instance_of R18n::I18n }
        it { is_expected.to eq R18n.get }

        describe 'locale code' do
          subject { super().locale.code }

          it { is_expected.not_to be_empty }
        end
      end

      describe 'R18n.get' do
        subject { R18n.get }

        it { is_expected.to eq r18n }
      end
    end

    describe 'loading i18n from system environment using specified order' do
      before do
        R18n.from_env(nil, 'en')
      end

      describe 'r18n' do
        subject { r18n }

        it { is_expected.to eq R18n.get }

        describe 'locale' do
          subject { super().locale }

          it { is_expected.to eq R18n.locale('en') }
        end
      end
    end

    describe 'overriding autodetect by LANG environment variable' do
      before do
        allow(R18n::I18n).to receive(:system_locale).and_return 'ru'
        ENV['LANG'] = 'en'
        R18n.from_env
      end

      describe 'r18n' do
        subject { r18n }

        describe 'locale' do
          subject { super().locale }

          it { is_expected.to eq R18n.locale('en') }
        end
      end
    end

    describe 'work with following `R18n.set`' do
      before do
        R18n.from_env 'spec/i18n/'
        R18n.set 'en'
      end

      describe 'translation' do
        subject { t.account.balance }

        it { is_expected.to eq 'Balance for account' }
      end
    end
  end
end
