###
# Template for orders pdf layout, uses jsPDF with
# very limited html support.
#   jsPDF docs state: "HTML Element, or anything supported by html2canvas"
#   see: http://mrrio.github.io/jsPDF/examples/basic.html
###

Template.foundationCompletedPDFLayout.inheritsHelpersFrom "foundationDashboardOrdersList"
Template.foundationCompletedPDFLayout.inheritsEventsFrom "foundationDashboardOrdersList"
Template.foundationCompletedPDFLayout.helpers
  invoice: () ->
    return @.payment.invoices[0]
