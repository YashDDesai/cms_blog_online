<?PHP
	function sendMessage(){
		$content = array("en" => 'Test from php');
		
		$fields = array('app_id' => "66b6019b-a544-49ad-8b75-890ec70d6f80", 'included_segments' => array('All'), 'data'=> array("foo" => "bar"), 'url'=>'https://www.youtube.com/?gl=IN&tab=w1', 'contents' => $content);
		
		//'uri'=>array('https://www.youtube.com/?gl=IN&tab=w1');
		
		$fields = json_encode($fields);
    print("\nJSON sent:\n");
    print($fields);
		
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json; charset=utf-8',
												   'Authorization: Basic ZGNjMjVkNzktYTE0MS00ODBkLWE5ZTctNWNjZTc4N2M5NDVi'));
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
		curl_setopt($ch, CURLOPT_HEADER, FALSE);
		curl_setopt($ch, CURLOPT_POST, TRUE);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

		$response = curl_exec($ch);
		curl_close($ch);
		
		return $response;
	}
	
	$response = sendMessage();
	$return["allresponses"] = $response;
	$return = json_encode( $return);
	
  print("\n\nJSON received:\n");
	print($return);
  print("\n");
?>
