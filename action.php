<?php  
	include 'con.php'; //Connection

//INSERTING DATA TO DB
if (isset($_POST["AddNewItem"])) { //addProduct Name of Button From Form

	//Name of Input to Post/Transfer data from Form to Action
	$Item_Name = $_POST['Item_Name'];
	$Brand_Name = $_POST['Brand_Name'];
	$Item_Quantity = $_POST['Item_Quantity'];
	$Item_Unit = $_POST['Item_Unit'];
	$DeliveryDate = $_POST['DeliveryDate'];
	$SupplierName = $_POST['SupplierName'];
	$SupplyCat = $_POST['SupplyCat'];
	$SupplyType = $_POST['SupplyType'];
	$Item_Serial = $_POST['Item_Serial'];
	$Item_Price = $_POST['Item_Price'];


	//SQL Query INSERT into DB
	$sql = "INSERT INTO supply (Item_Name, Item_Quantity, Item_Unit, DeliveryDate, SupplierName, SupplyCat, SupplyType, Item_Price, Item_Serial) VALUES ('$Item_Name', '$Item_Quantity', '$Item_Unit', '$DeliveryDate', '$SupplierName', '$SupplyCat', '$SupplyType', '$Item_Price', '$Item_Serial')";
	$result = mysqli_query($conn, $sql);

	if($result)
	{
		header('location:tables.php');

	}
	else
	{
		?> 
		<script type="text/javascript"> alert("<?php echo mysqli_error($conn);?>")</script>
		<?php
		
	}
}
//DELETE DATA
if (isset($_POST["deleteItem"])) { //addProduct Name of Button From Form

	//Name of Input to Post/Transfer data from Form to Action
	$Item_id = $_POST['Item_id'];

	//SQL Query DELETE from table product
	//Permi ka dapat may WHERE pag madelete ta pag mayo ubos ang lama kang db mo
	$sql = "DELETE FROM supply WHERE Item_id = '$Item_id'";
	$result = mysqli_query($conn, $sql);

	if($result)
	{
		header('location:index.php');
	}
	else
	{
		?>
			<script>
				window.history.back();
			</script>
		<?php
	}
}
?>