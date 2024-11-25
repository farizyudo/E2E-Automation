# resources/keywords.py

from robot.api.deco import keyword
from SeleniumLibrary import SeleniumLibrary

class CustomKeywords(SeleniumLibrary):

    @keyword
    def open_browser_with_url(self, url, browser):
        """Membuka browser dengan URL yang diberikan."""
        self.open_browser(url, browser)

    @keyword
    def fill_contact_form(self, name, email, message, name_field, email_field, message_field):
        """Mengisi form kontak dengan data yang diberikan."""
        self.input_text(name_field, name)
        self.input_text(email_field, email)
        self.input_text(message_field, message)

    @keyword
    def submit_contact_form(self, submit_button):
        """Klik tombol submit untuk mengirim form kontak."""
        self.click_button(submit_button)

