################################################################
# Base Template Overrides
################################################################
Template.foundationLayout.replaces 'coreLayout'
Template.foundationHead.replaces 'coreHead'
Template.foundationLayoutHeader.replaces 'layoutHeader'
Template.foundationDashboard.replaces 'dashboard'
Template.foundationLayoutFooter.replaces 'layoutFooter'
Template.foundationAlerts.replaces 'bootstrapAlerts'
Template.foundationAlert.replaces 'bootstrapAlert'
Template.foundationCheckoutLayout.replaces 'layout'

################################################################
# Header Overrides
################################################################

# Keep foundation Version due to the way that Template.template.replaces
# brings in events, helpers, and rendered calls from replaced template.
# Currently seems like we can only use `replaces` for templates that don't need
# different logic.

# Template.foundationLoginDropdown.replaces 'loginDropdown'
# Template.foundationUserDropdown.replaces 'userDropdown'
# Template.foundationAccountsDropdownApps.replaces 'accountsDropdownApps'
# Template.foundationUserAccountsDropdown.replaces 'userAccountsDropdown'

Template.foundationHeaderBrand.replaces 'headerBrand'
Template.foundationI18nChooser.replaces 'i18nChooser'

Template.foundationConsoleNavBar.replaces 'consoleNavBar'
Template.foundationConsoleIcon.replaces 'consoleIcon'
Template.foundationConsoleWidgets.replaces 'consoleWidgets'

Template.foundationCartIcon.replaces 'cartIcon'
Template.foundationCartPanel.replaces 'cartPanel'
Template.foundationHeaderTags.replaces 'headerTags'
Template.foundationHeaderLinks.replaces 'headerLinks'
Template.foundationTagInputForm.replaces 'tagInputForm'

################################################################
# Login Button Overrides
################################################################
# extend login_buttons.html to use Foundation specific templates
# Login Buttons Replacements
Template._foundationLoginButtons.replaces("loginButtons")
Template._foundationLoginButtonsLoggedIn.replaces("_loginButtonsLoggedIn")
Template._foundationLoginButtonsLoggedOut.replaces("_loginButtonsLoggedOut")
Template._foundationLoginButtonsMessages.replaces("_loginButtonsMessages")
Template._foundationLoginButtonsLoggingIn.replaces("_loginButtonsLoggingIn")
Template._foundationLoginButtonsLoggingInPadding.replaces("_loginButtonsLoggingInPadding")

# extend login_buttons_dialogs.html to use Reaction specific templates
Template._foundationResetPasswordDialog.replaces("_resetPasswordDialog")
Template._foundationJustResetPasswordDialog.replaces("_justResetPasswordDialog")
Template._foundationEnrollAccountDialog.replaces("_enrollAccountDialog")
Template._foundationJustVerifiedEmailDialog.replaces("_justVerifiedEmailDialog")
Template._foundationConfigureLoginServiceDialog.replaces("_configureLoginServiceDialog")
Template._foundationLoginButtonsMessagesDialog.replaces("_loginButtonsMessagesDialog")

# extend login_buttons_dropdown.html to use Reaction specific templates
Template._foundationLoginButtonsLoggedInDropdown.replaces("_loginButtonsLoggedInDropdown")
Template._foundationLoginButtonsLoggedInDropdownActions.replaces("_loginButtonsLoggedInDropdownActions")
Template._foundationLoginButtonsLoggedOutDropdown.replaces("_loginButtonsLoggedOutDropdown")
Template._foundationLoginButtonsLoggedOutAllServices.replaces("_loginButtonsLoggedOutAllServices")
Template._foundationLoginButtonsLoggedOutPasswordServiceSeparator.replaces("_loginButtonsLoggedOutPasswordServiceSeparator")
Template._foundationLoginButtonsLoggedOutPasswordService.replaces("_loginButtonsLoggedOutPasswordService")
Template._foundationForgotPasswordForm.replaces("_forgotPasswordForm")
Template._foundationLoginButtonsBackToLoginLink.replaces("_loginButtonsBackToLoginLink")
Template._foundationLoginButtonsFormField.replaces("_loginButtonsFormField")
Template._foundationLoginButtonsChangePassword.replaces("_loginButtonsChangePassword")

# extend login_buttons_single.html to use Reaction specific templates
Template._foundationLoginButtonsLoggedOutSingleLoginButton.replaces("_loginButtonsLoggedOutSingleLoginButton")
Template._foundationLoginButtonsLoggingInSingleLoginButton.replaces("_loginButtonsLoggingInSingleLoginButton")
Template._foundationLoginButtonsLoggedInSingleLogoutButton.replaces("_loginButtonsLoggedInSingleLogoutButton")


################################################################
# Dashboard Overrides
################################################################

Template.foundationDashboardPackages.replaces 'dashboardPackages'
Template.foundationPackagesGrid.replaces 'packagesGrid'
Template.foundationGridPackage.replaces 'gridPackage'

#
### Package Overrides ###
#
## Shop Settings and Accounts
Template.foundationShopSettings.replaces 'shopSettings'
Template.foundationShopAccounts.replaces 'shopAccounts'
Template.foundationShopMember.replaces 'shopMember'
Template.foundationMemberForm.replaces 'memberForm'

## Orders
Template.foundationOrders.replaces 'orders'
Template.foundationOrderPage.replaces 'orderPage'
Template.foundationPageOrderDetail.replaces 'pageOrderDetail'
Template.foundationOrderDetail.replaces 'orderDetail'
Template.foundationStateHelperTracking.replaces 'stateHelperTracking'
Template.foundationStateHelperDocuments.replaces 'stateHelperDocuments'
Template.foundationStateHelperPacking.replaces 'stateHelperPacking'
Template.foundationStateHelperPayment.replaces 'stateHelperPayment'
Template.foundationStateHelperShipped.replaces 'stateHelperShipped'
Template.foundationStateHelperCompleted.replaces 'stateHelperCompleted'
Template.foundationOrderSocial.replaces 'orderSocial'
# Template.foundationOrderWidgets.replaces 'orderWidgets'
Template.foundationOrderWidgets.replaces 'coreOrderWidgets'
Template.foundationDashboardOrdersList.replaces 'dashboardOrdersList'
Template.foundationOrdersListItems.replaces 'ordersListItems'
Template.foundationCompletedPDFLayout.replaces 'completedPDFLayout'
Template.foundationOrdersListSummary.replaces 'ordersListSummary'



################################################################
# Product Overrides
################################################################
Template.foundationProducts.replaces 'products'

#
### Product Grid ###
#
Template.foundationProductGrid.replaces 'productGrid'
Template.foundationProductListGrid.replaces 'productListGrid'
Template.foundationProductGridItems.replaces 'productGridItems'
Template.foundationGridControls.replaces 'gridControls'
Template.foundationGridContent.replaces 'gridContent'
Template.foundationGridNotice.replaces 'gridNotice'
Template.foundationProductList.replaces 'productList'

#
### Product Detail ###
#
Template.foundationProductDetail.replaces 'productDetail'
Template.foundationProductSocial.replaces 'productSocial'
Template.foundationProductDetailEdit.replaces 'productDetailEdit'
Template.foundationProductDetailField.replaces 'productDetailField'

## Product Variants
Template.foundationVariantList.replaces 'variantList'
Template.foundationVariant.replaces 'variant'
Template.foundationVariantForm.replaces 'variantForm'
Template.foundationChildVariantForm.replaces 'childVariantForm'

## Product Images
Template.foundationProductImageGallery.replaces 'productImageGallery'
Template.foundationImageDetail.replaces 'imageDetail'
Template.foundationImageUploader.replaces 'imageUploader'

## Product Tags
Template.foundationProductTagInputForm.replaces 'productTagInputForm'
Template.foundationProductDetailTags.replaces 'productDetailTags'

## Product Meta
Template.foundationProductMetaFieldForm.replaces 'productMetaFieldForm'
Template.foundationProductMetaField.replaces 'productMetaField'


################################################################
# Checkout Overrides
################################################################
Template.foundationCartCheckout.replaces 'cartCheckout'
Template.foundationCheckoutHeader.replaces 'checkoutHeader'
Template.foundationCheckoutProgressBar.replaces 'checkoutProgressBar'

Template.foundationCheckoutAddressBook.replaces 'checkoutAddressBook'
Template.foundationAddressBookEdit.replaces 'addressBookEdit'
Template.foundationAddressBookGrid.replaces 'addressBookGrid'
Template.foundationAddressBookAdd.replaces 'addressBookAdd'

Template.foundationCheckoutShipping.replaces 'coreCheckoutShipping'
Template.foundationCheckoutReview.replaces 'checkoutReview'
Template.foundationCheckoutPayment.replaces 'checkoutPayment'
Template.foundationPaymentMethods.replaces 'corePaymentMethods'

Template.foundationEmptyCheckoutCart.replaces 'emptyCheckoutCart'
