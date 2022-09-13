// Created a class to keep track of a certain place's temperature, and can switch back and forth between temperature typed and increase/decrease temperature.

class Temperature {
  constructor(degrees, scale) {
    this.degrees = degrees;
    this.scale = scale;
  }
  adjustTemp(degrees) {
    this.scale += degrees;
  }
  toCelcius() {
    if (this.scale === "fahrenheit") {
      this.degrees = Math.round(((this.degrees - 32) * 5) / 9);
      this.scale = "celcius";
    }
  }
  toFahrenheit() {
    if (this.scale === "celcius") {
      this.degrees = Math.round((this.degrees * 9) / 5 + 32);
      this.scale = "celcius";
    }
  }
  isBoiling() {
    if (this.scale === "celcius") {
      return this.degrees >= 100;
    } else if (this.scale === "fahrenheit") {
      return this.degrees >= 212;
    }
  }
}

chicago = new Temperature(63, "fahrenheit");

console.log(chicago.degrees); // => 63
console.log(chicago.scale); // => fahrenheit
chicago.toCelcius();
console.log(chicago.degrees); // => 17
console.log(chicago.scale); // => celcius
console.log(chicago.isBoiling()); // => false
