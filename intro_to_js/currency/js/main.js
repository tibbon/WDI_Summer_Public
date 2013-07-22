function convertDollarsToPounds(amount) {
  var exchangeRate = 0.66;
  return amount * exchangeRate;
}

function convertDollarsToOther(amount, country){
  var exchange = {
    'eu': 0.76,
    'uk': 0.66,
    'ca': 1.5
  };
  var rate = exchange[country];
  var newMoney = amount * rate;
  return newMoney;
}