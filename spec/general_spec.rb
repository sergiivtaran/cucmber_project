require_relative '../spec/spec_helper'
describe 'registration' do
  describe 'Positive' do
    describe 'On registration page' do
      describe 'After valid credentials are submitted' do
        before(:each) do
          visit(RegistrationPage)
          @user = on(RegistrationPage).register
        end
        it 'is registered' do
          expect(on(MyAccountPage)).to be_registered
        end
        describe 'After logged-out' do
          before(:each) do
            on(MyAccountPage).logout
          end
          describe 'After logged-in' do
            before(:each) do
              visit(LoginPage)
              on(LoginPage).login_in(@user)
            end
            it 'is logged-in' do
              expect(on(MyAccountPage)).to be_logged_in(@user)
            end
          end
        end
        it 'changed password' do
          on(PasswordPage).change_password
        end
        describe 'after new project creation' do
          before(:each) do
            on(MyAccountPage).create_project(@user)
          end
          it 'project is created' do
            expect(on(MyAccountPage)).to be_registered
          end

        end
      end

    end
  end
end