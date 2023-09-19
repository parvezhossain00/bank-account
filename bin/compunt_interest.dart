import 'dart:math';
import 'dart:io';
void main() {
  print('Welcome to the Compound Interest Calculator');
  stdout.write('Enter the initial principal balance: ');
  double principal = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Enter the annual interest rate (as a decimal): ');
  double annualInterestRate = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Enter the number of times interest is compounded per year: ');
  int compoundFrequency = int.parse(stdin.readLineSync() ?? '0');

  stdout.write('Enter the number of years: ');
  int years = int.parse(stdin.readLineSync() ?? '0');
  double compoundedBalance = principal * pow(1 + annualInterestRate / compoundFrequency, compoundFrequency * years);
  print('\nCalculating Compound Interest...');
  print('Initial Principal Balance: \$${principal.toStringAsFixed(2)}');
  print('Annual Interest Rate: ${(annualInterestRate * 100).toStringAsFixed(2)}%');
  print('Compounded $compoundFrequency times per year for $years years.');
  print('Final Balance (with compound interest): \$${compoundedBalance.toStringAsFixed(2)}');
}
