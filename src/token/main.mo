import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";

actor Token {

var owner :Principal = Principal.fromText("ncm2v-6awuw-sds4a-ejtrn-3b7ee-s3o6h-fdyjq-cewmj-4bitt-htj4b-zqe");
var totalSupply : Nat = 1000000000;
var symbol:Text = "BIG BANG";

var balances = HashMap.HashMap<Principal, Nat>(1,Principal.equal,Principal.hash);
balances.put(owner,totalSupply);

public query func balanceOf(who:Principal) : async Nat{

    let balance:Nat = switch (balances.get(who)){
case null 0;
case (?result) result ;
    };
    return balance;
}
};