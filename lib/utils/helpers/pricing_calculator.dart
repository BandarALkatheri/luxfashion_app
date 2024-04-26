class TPricingCalculator {
//calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, double location) {
    double texRate = getTaxRateForLocation('KSA');
    double taxAmount = productPrice * texRate;

    double shippingCost = 10;

    double totalCost = productPrice + taxAmount + shippingCost;
    return totalCost;
  }

  // calculate shipping cost
  static String calculateShippingCost(double productPrice, double location) {
    double shippingCost = getShippingCost('KSA');
    return shippingCost.toStringAsFixed(2);
  }

  //Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation('KSA');
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    //taxRate for the given location from a tax rate database or api
    //return the appropriate tax rate
    return 0.10;
  }

  static double getShippingCost(String location) {
    //shippingCost for the given location using a shipping rate api
    //calculate the shipping cost based on various factors like distance weight,..etc
    return 5.0;
  }
}
