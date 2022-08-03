/**
 * An apex page controller that exposes the site forgot password functionality
 */
public with sharing class ForgotPasswordController {
    public String username {get; set;}   
       
    public ForgotPasswordController() {}
	
  	public PageReference forgotPassword() {
  		boolean success = Site.forgotPassword(username);
  		PageReference vfpage = Page.ForgotPasswordConfirm;
  		vfpage.setRedirect(true);
  		
  		if (success) {  	
			System.debug('This worked fine!');		
  			return vfpage;
  		}
  		return null;
  	}
}