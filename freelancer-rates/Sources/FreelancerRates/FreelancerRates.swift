func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let undiscounted = dailyRateFrom(hourlyRate: hourlyRate) * 22
  return  undiscounted - (undiscounted * (discount/100))
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let equilivent_before_discount = budget / (100-discount) * 100
  return (equilivent_before_discount / dailyRateFrom(hourlyRate: hourlyRate)).rounded(.down)
}
