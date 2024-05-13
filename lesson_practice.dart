import 'dart:io';

void main() {
  convert();
}
convert() {
  print(
      '1) Хотите обменять другую валюту на сом? \n2) Хотите обменять сом на другую валюту?');
  int exchange = int.parse(stdin.readLineSync()!);

  if (exchange != 1 && exchange != 2) {
    print('ошибка ');
    convert();
  }
  print(' Выберите валюту:\n 1)USD \n 2)EUR \n 3)RUB \n 4)KZT');
  String currencies = stdin.readLineSync()!.toUpperCase();

  if (currencies != 'usd' &&
      currencies != 'eur' &&
      currencies != 'rub' &&
      currencies != 'kzt') {
    print('ошибка ');
    convert();
  }
  print('Сколько вы хотите купить , продать?:');
  int amountOfMoney = int.parse(stdin.readLineSync()!);
  
  if (amountOfMoney.runtimeType != int) {
    print('введите коректно ');
    convert();
  }
  int usd = 87;
  int eur = 110;
  double rub = 0.9;
  double kzt = 0.212321;

  if (exchange == 1 && currencies == 'USD') {
    print('вы получите: ${amountOfMoney * usd} сом');
  } else if (exchange == 1 && currencies == 'EUR') {
    print('вы получите: ${eur * amountOfMoney} сом');
  } else if (exchange == 1 && currencies == 'RUB') {
    print('вы получите: ${rub * amountOfMoney} сом');
  } else if (exchange == 1 && currencies == 'KZT') {
    print('вы получите: ${eur * amountOfMoney} сом');
  }

  if (exchange == 2 && currencies == 'USD') {
    print('вы получите: ${amountOfMoney / usd} долларов');
  } else if (exchange == 2 && currencies == 'EUR') {
    print('вы получите: ${eur / amountOfMoney} евро');
  } else if (exchange == 2 && currencies == 'RUB') {
    print('вы получите: ${rub / amountOfMoney} рублей');
  } else if (exchange == 2 && currencies == 'KZT') {
    print('вы получите: ${kzt / amountOfMoney} тенге');
  }
}
