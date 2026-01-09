## Prompt  
Design a test case to validate a password reset flow with email verification.

## Response  
**Test Case Title:** Password Reset with Email Verification  
**Preconditions:** User has a valid account and access to registered email  
**Steps:**  
1. Navigate to login page  
2. Click "Forgot Password"  
3. Enter registered email  
4. Click "Send Verification"  
5. Open email and click reset link  
6. Enter new password and confirm  
7. Submit form  
**Expected Result:** Password is updated, user can log in with new credentials  
**Edge Cases:** Expired link, mismatched passwords, invalid email format