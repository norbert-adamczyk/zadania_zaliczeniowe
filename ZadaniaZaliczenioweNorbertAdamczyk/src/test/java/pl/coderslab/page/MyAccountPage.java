package pl.coderslab.page;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class MyAccountPage {
    WebDriver driver;

    @FindBy(id = "address-link")
    WebElement firstAddressBttn;
    @FindBy(xpath = "//div[@class='address-body']")
    WebElement addressBox;

    public MyAccountPage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public String getFilledAddress() {
        return addressBox.getText();
    }

    public void clickAddAddressBttn() {
        firstAddressBttn.click();
    }
}
