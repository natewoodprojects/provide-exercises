function adjustTemp(degrees, scale) {
  var fahrenheit = -40;
  var celcius = -40;
  if (scale === "fahrenheit") {
    fahrenheit += degrees;
    celDeg = ((degrees - 32) * 5) / 9;
    celcius += celDeg;
  } else if (scale === "celcius") {
    celcius += degrees;
    celFah = (degrees * 9) / 5 + 32;
    fahrenheit += celFah;
  }
  return [celcius, fahrenheit];
}

function toCelsius(fahrenheit) {
  return ((fahrenheit - 32) * 5) / 9;
}

function toFahrenheit(celsius) {
  return (celsius * 9) / 5 + 32;
}

function celcBoiling(celsius) {
  return celsius >= 100;
}

function fahrenBoiling(fahrenheit) {
  return fahrenheit >= 212;
}

console.log(fahrenheit, celcius);

console.log(adjustTemp(50, "fahrenheit"));

console.log(fahrenheit, celcius, "should be 10 and -12.2222");
