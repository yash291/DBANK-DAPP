import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
// mo:base means motokko base and then Debug

actor DBank {
  stable var currentValue = 300;
  // currentValue := 100;

  let id = 234;
  //let is mostly used for constants only

  // Debug.print("Hello");
  // Debug.print(debug_show(currentValue));

  public func topUp(amount : Nat) {
    // Nat means natural nos
    currentValue += 1;
    Debug.print(debug_show (currentValue));
  };

  //topUp();

  public func withdraw(amount : Nat) {
    let tempValue : Int = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    }else{
      Debug.print("Amount too large, current Value is less than zero");
    }
  };

  public query func checkBalance(): async Nat{
    return currentValue;
  };

};
