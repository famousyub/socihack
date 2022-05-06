<?hh


function connect(string $port,string $db):string {
   return "coonection ";
}



async function fetch_user_id(int $user_id):Awaitable<?string> {

  $conn = await AsyncMysqlClient::connect(
    '127.0.0.1',
    3306,
    'famousme',
    'root',
    ''
    );
    if($conn ==null){
      return "error connction ";
    }else {
      $result =await $conn->queryf(
        'select username  from Wo_Users WHERE user_id=%d',$user_id
        );
        invariant($result->numRows()===1,"excatly one rows");

        $vectres = $result->vectorRows();
      //  var_dump($vectres);
        return $vectres[0][0];
    }
}

<<__EntryPoint>>


async function   main():Awaitable<void>  {
$rt  = await fetch_user_id(1);
//\HH\Asio\join(
  echo $rt;
  print ($rt);


}
