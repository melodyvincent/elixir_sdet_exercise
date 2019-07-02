defmodule ElixirSdetExerciseTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  # Start hound session and destroy when tests are run
  hound_session()

  @existing_snapshot_path "test/fixtures/integration_existing.json"
  @complex_snapshot_path "test/fixtures/integration_complex.json"

  describe "store_and_compare!/2" do
    test "a new path writes the data to disk" do
      path = "test/screenshots/integration_new.json"
      data = %{a: 1, b: 2}
      assert data |> ResponseSnapshot.store_and_compare!(path: path) == data

      %{"data" => %{"a" => 1, "b" => 2}} = FileManager.read_screenshots(path)
      FileManager.cleanup_screenshots(path)
    end

  test "Facebook Landing Page/Login" do
    const_pass = false
  #navigate_to facebook
  navigate_to "https://www.facebook.com"

  expectedPage = "Facebook - Log In or Sign Up"
  const_pass = if page_title() == expectedPage, do
    true
  else
   take_screenshot ("Facebook current Page")
  end
  assert const_pass == true
end

#Locating different elements in the page
e_firstname = find_element(:name,"firstname")
e_lastname = find_element(:name, "lastname")
e_reg_email= find_element(:name, "reg_email_")
e_Password = find_element(:name, "reg_pswd_")
e_SignUp = find_element(:name, "Submit")

end

#Login Page- testing for invalid/incorrect password
def invalidcredential do
  find_element(:name, "email")
  fill_field(:name, "melody.vincent@zoho.com")
  find_element(:name, "pswd")
  fill_field(Faker.String.base64(10))
  e_login = find_element(:id, "login")

def while(condition, function) do
  if condition == true do
    function.()
    while(condition, function)
  else
    take_screenshot("screenshot-wrong-password.png")
end

#Verify that we are on the landing page again
test "Facebook Landing Page/Login" do
  const_pass = false
#navigate_to facebook
navigate_to "https://www.facebook.com"

expectedPage = "Facebook - Log In or Sign Up"
const_pass = if page_title() == expectedPage, do
  true
else take_screenshot
 ("screenshot Facebook not-current Page")
end
assert const_pass == true
end

# LoginPage - Testing for empty password field
test "empty field for password" do
  navigate to "https://facebook.com"

  expectedPage = "Facebook - Log In or Sign Up"
  const_pass = page_title() == expectedPage, do: "true",
else: take_screenshot("screenshot-notFacebook.png")

  e_Email_PhoneNumber = find_element(:name, "melody.vincent@zoho.com")
  e_password = find_element(:name, "")
  fill_field(:name, "")
  e_Login = find_element(:name, "Login")

  const_pass = if element?(:class, ""), do: "true"
else: take_screenshot("screenshot-empty_pswd.png")
assert const_pass
end

#Empty Email or Phone number field
test "empty field for email or phone number" do
  navigate_to "https://facebook.com"

  expectePage = "Facebook - Log In or Sign Up"
  const_pass = page_title() == expectedPage, do: "true",
else take_screenshot("screenshot-not_the_LoginPage.png")

e_email = find_element(:name, "reg_email_")

fill_field(e_email, "")
e_Password = find_element(:name, "pswd")
fill_field = find_element(:name, "test123")
e_Login = find_element(:name, "Login")
end

const_pass = if element?(:class, ""), do: "true",
else take_screenshot("screenshot-empty_email_phone.png")

assert const_pass
end


#Number of failed login attempts
test "failed login" do
  const_pass = false
  navigate_to "https://facebook.com"

  e_email = find_element(:id, "email")
  fill_field = find_element(:id, "melody.vincent@zoho.com")
  e_password = find_element(:name, "pswd")
  fill_field = find_element(:name, "test000")
  e_login = find_element(:id, "login")
  const_NumLogin = 1
end

def field(n) when n <= 1 do
  e_email = find_element(:id, "email")
  e_password = find_element(:name, "psdw")
  fill_field(e_email, "test@email.com")
  fill_field(e_password, "test123")
  e_login = find_element(:id, "login")
  click(e_login)
end

def field(n) do
  e_email = find_element(:id, "email")
  e_password = find_element(:name, "psdw")
  e_login = find_element(:id, "login")
  fill_field(e_email, "8015551212")
  fill_field(e_password, "test123")
  click(e_login)
  const_num = n-1
  field(const_num)
end

  const_pass = if element?(:class, ""), do: "true"
else take_screenshot("screenshot_failedLogin.png")
assert const_pass
end
end

#Signing Up for an account- firstname, no lastname
test "SignUp Failure" do
  const_pass = false
  navigate_to "https://facebook.com"
  assert_expectedPage() == "Facebook Log In or Sign Up"

e_field(e_firstName, "Johnny")
e_field(e_PhoneNumber, '8015551211')
e_field(e_password, "test123")
click(e_SignUp)

#Check if after sign up, we are taken to the landing page
const_pass = if expectedPage() == "Facebook Log In or Sign Up" do
  true
else take_screenshot("screenshot-no_lastname.png")
end

#Signing Up for an account- no firstname, with lastname
test "SignUp Failure" do
  const_pass = false
  navigate_to "https://facebook.com"
  assert_expectedPage() == "Facebook Log In or Sign Up"

e_field(e_lastName, "Bravo")
e_field(e_PhoneNumber, '8015551211')
e_field(e_password, "test123")
click(e_SignUp)

#Check if after sign up, we are taken to the landing page
const_pass = if expectedPage() == "Facebook Log In or Sign Up" do
  true
else take_screenshot("screenshot-no_firstname.png")
end

#Are we on the landing page after the invalid sign up
const_pass = if expectedPage() == "Facebook Log In or Sign Up" do
  true
else
  take_screenshot("screenshot_not_landingPage.png")
end
assert const_pass == true
end

#Email not entered when signing up
test "empty email field when signing up" do
  navigate_to = "Faebook - Log In or Sign Up"

  const_pass = if page_title == expectedPage, do
    true
  else  take_screenshot("screenshot Facebook not_current page")

  asssert const_pass == true

  e_email = find_element(:name, "reg_email_")
  fill_field(e_email, "")
  click(e_email)

  const_pass = if element?(:c;ass, ""), do: "true"
else take_screenshot("screenshot_empty_email.png")
end

#invalid phone number entry on signup
test "invalid phone number when signing up" do
  const_pass = false
  navigate_to = "Faebook - Log In or Sign Up"

  const_pass = if page_title == expectedPage, do
    true

  e_firstName = find_element(:name, "firstName")
  e_lastName = find_element(:name, "lastName")
  e_PhoneNumber = find_element(e_PhoneNumber, "")
  e_SignUp = find_element(:name, "SignUp")

  fill_field(e_firstName, "Johnny")
  fill_field(e_lastName, "Bravo")
  fill_field(e_PhoneNumber or Email, "801555i212")
  click(e_SignUp)
  const_pass = if element?(:class, ""), do: "true"
else take_screenshot("screenshot_wrong_email.png")
end
