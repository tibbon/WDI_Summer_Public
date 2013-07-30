var checkingBalance = 0;
var savingsBalance = 0;

window.onload = function(){

  document.getElementById('checking-deposit').onclick = function getChecking(event){
    var amount = document.getElementById('checking-amount').value;
    amount = parseInt(amount);
    checkingBalance = amount + checkingBalance;
    updateDisplay();
  };

  document.getElementById('savings-deposit').onclick = function(event){
    var amount = document.getElementById('savings-amount').value;
    amount = parseInt(amount);
    savingsBalance = amount + savingsBalance;
    updateDisplay();
  };

  document.getElementById('checking-withdraw').onclick = function(event){
    var amount = document.getElementById('checking-amount').value;
    amount = parseInt(amount);
    balances = withdrawFunds(amount, checkingBalance, savingsBalance);
    checkingBalance = balances[0];
    savingsBalance = balances[1];
    updateDisplay();
  };

  document.getElementById('savings-withdraw').onclick = function(event){
    var amount = document.getElementById('savings-amount').value;
    amount = parseInt(amount);
    balances = withdrawFunds(amount, savingsBalance, checkingBalance);
    savingsBalance = balances[0];
    checkingBalance = balances[1];
    updateDisplay();
  };

  updateDisplay();

};

function withdrawFunds(amount, primary, secondary) {
  if (amount <= primary) {
    primary = primary - amount;
  } else if ((amount > primary) && (amount <= (secondary + primary))) {
    secondary = (primary + secondary) - amount;
    primary = 0;
  }
  return [primary, secondary];
}

function updateDisplay() {

  var element = document.getElementById('checking-balance');

  if (checkingBalance <= 0) {
    element.classList.add('zero');
  } else {
    element.classList.remove('zero');
  }

  var element2 = document.getElementById('savings-balance');

  if (savingsBalance <= 0) {
    element2.classList.add('zero');
  } else {
    element2.classList.remove('zero');
  }
  document.getElementById('checking-balance').innerHTML = '$' + checkingBalance;
  document.getElementById('savings-balance').innerHTML = '$' + savingsBalance;
  document.getElementById('checking-amount').value = '';
  document.getElementById('savings-amount').value = '';
}