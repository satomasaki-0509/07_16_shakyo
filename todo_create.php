<?php

if (
  !isset($_POST['todo']) || $_POST['todo']=='' ||
  !isset($_POST['deadline']) || $_POST['deadline']==''
  ) {
  exit('ParamError');
  }
// データを変数に格納
  $todo = $_POST['todo'];
  $deadline = $_POST['deadline'];



// DB接続情報
// 「dbname」「port」「host」「username」「password」を設定
$dbn = 'mysql:dbname=gsacf_d07_16;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';


// DB接続
try {
  $pdo = new PDO($dbn, $user, $pwd);
  
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}
// 「dbError:...」が表示されたらdb接続でエラーが発生していることがわかる．

// SQL作成&実行
$sql = 'INSERT INTO
todo_table(id, todo, deadline, created_at, update_at)
VALUES(NULL, :todo, :deadline, sysdate(), sysdate())';


// ↓下の文は変わらないのでコピペ
$stmt = $pdo->prepare($sql);

$stmt->bindValue(':todo', $todo, PDO::PARAM_STR);

$stmt->bindValue(':deadline', $deadline, PDO::PARAM_STR);

$status = $stmt->execute(); 
// SQLを実行




if ($status==false) {
  $error = $stmt->errorInfo();
  // データ登録失敗次にエラーを表示
  exit('sqlError:'.$error[2]);
  } else { 
  // 登録ページへ移動
  header('Location:todo_input.php');
  }