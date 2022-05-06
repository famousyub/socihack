

use HH\Lib\C;
function get_params():dict  {
   return $_GET ;
}

function env_vars():array {
return $_ENV;
}

function string_params(string $key): ?string {


   if(!C\contains_key($_GET,$key)){
   return null;
   }

   $value= $_GET[$key];
   invariant(is_string($value),"GET params must be a string");

   return $value;
}

<<__EntryPoint>>

function main ():void {

//$d = get_params();
//$d=array("id"=>1,"user"=>"yub","yub"=>"me");
$d= get_params();
echo $d["name"];
echo $d["username"];
//var_dump($d);
echo  string_params("name");


echo  string_params("username");
}
