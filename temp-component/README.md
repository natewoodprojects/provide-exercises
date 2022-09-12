
### Temperature Component

**Language: Emberjs (i.e., JavaScript)**

In a JavaScript file (or a few JavaScript files), write Emberjs code that could be used to build a temperature component, fulfilling the below requirements.

- There are two text inputs, one for Celsius and one for Fahrenheit
- Updating one input's value also updates the other's
- There is a warning when the inputted value is above boiling temperatures

The point of this exercise is to start a conversation about DDAU patterns in Emberjs code.

Some helpful functions:
```
function toCelsius(fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

function toFahrenheit(celsius) {
  return (celsius * 9 / 5) + 32;
}

function isBoiling(celsius) {
  return celsius >= 100;
}
```
