require_relative '../spec/spec_helper'
describe 'registration' do
  describe 'Positive' do
    describe 'On registration page' do
      describe 'After valid credentials are submitted' do
        before(:all) do
          visit(RegistrationPage)
          @user = on(RegistrationPage).register
        end
        it 'is registered' do
          expect(on(MyAccountPage)).to be_registered
        end
        describe 'After logged-out' do
          before(:all) do
            on(MyAccountPage).logout
          end
          describe 'After logged-in' do
            before(:all) do
              visit(LoginPage)
              on(LoginPage).login_in(@user)
            end
            it 'is logged-in' do
              expect(on(MyAccountPage)).to be_logged_in(@user)
            end
          end
        end
      end
    end
  end
end