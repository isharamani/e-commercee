class TPricingCalculator{

  static double calculateTotalPrice(double productPrize, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrize + taxRate;

    double shippingCose = getShippingCose(location);

    double totalPrice = productPrize+taxAmount+shippingCose;
    return totalPrice;
  }
  static String calculaterShippingCost(double productPrice, String location){
    double shippingCose = getShippingCose(location);
    return shippingCose.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice,String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice+taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    return 0.10;
  }

  static double getShippingCose(String location){
    return 5.00;
  }
}