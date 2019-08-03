
<div class="header">
	<h1 class="page-header">Add To Stock</h1>
</div>
<div id="page-inner">
	<div class="row">
		<div class="col-lg-7">
			<div class="card">
 				<div class="card-action">
 				</div>
				<div class="card-content">
					<form class="col s12" name="addProductForm">
						<div class="row">
							<div class="input-field col s6">
								<input id="productName" type="text" data-ng-model="product.productName" name="ProductName"
									class="" required list="products-list" ng-keyup="loadMatchingProducts()">
									<datalist id="products-list"></datalist>
									 <label for="">Product Name</label>
									<span class="validation-msg-span" 
									data-ng-show = "addProductForm.ProductName.$invalid && addProductForm.ProductName.$touched">Name is required.</span>
							</div>
							<div class="input-field col s4">
								<input id="batchNo" type="text" class="" data-ng-model="product.batchNo" name="batchNo" required> <label
									for="">Batch No.</label>
								<span class="validation-msg-span" 
									data-ng-show = "addProductForm.batchNo.$invalid && addProductForm.batchNo.$touched">Batch No is required.</span>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s4">
								<input type="text" id="mfgDate" name="mfgDate" class="monthpicker" readonly data-ng-model="product.mfgDate" required><label
									for="">Mfg. Date</label>
								<span class="validation-msg-span" 
									data-ng-show = "addProductForm.mfgDate.$invalid && addProductForm.mfgDate.$touched">Mfg date is required.</span>
							</div>
							<div class="input-field col s4">
								<input type="text" id="expDate" name="expDate" class="monthpicker" readonly data-ng-model="product.expDate" required><label
									for="">Exp. Date</label>
								<span class="validation-msg-span" 
									data-ng-show = "addProductForm.expDate.$invalid && addProductForm.expDate.$touched">Exp date is required.</span>
							</div>
							<div class="input-field col s4">
								<input type="text" id="importedDate" name="importedDate" class="datepicker" readonly data-ng-model="product.importedDate" required><label
									for="">Imported Date</label>
								<span class="validation-msg-span" 
									data-ng-show = "addProductForm.importedDate.$invalid && addProductForm.importedDate.$touched">Imported date is required.</span>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s3">
								<input type="number" step=".01" name="mrp" id="mrp" class="" data-ng-model="product.mrp" required><label
									for="">MRP (Rs)</label>
								<span class="validation-msg-span" 
									data-ng-show = "addProductForm.mrp.$invalid && addProductForm.mrp.$touched">MRP is required.</span>
							</div>
							<div class="input-field col s3">
								<input type="number" step=".01" name="rate" id="rate" class="" data-ng-model="product.rate" required><label
									for="">Rate (Rs)</label>
								<span class="validation-msg-span" 
									data-ng-show = "addProductForm.rate.$invalid && addProductForm.rate.$touched">Rate is required.</span>
							</div>
							<div class="input-field col s3">
								<input type="number" name="units" id="units" class="" data-ng-model="product.units" required><label
									for="">Units</label>
								<span class="validation-msg-span" 
									data-ng-show = "addProductForm.units.$invalid && addProductForm.units.$touched">Units required</span>
							</div>
							<div class="input-field col s3">
								<input type="number" name="qty" id="qty" class="" data-ng-model="product.qty" required><label
									for="">Quantity</label>
								<span class="validation-msg-span" 
									data-ng-show = "addProductForm.qty.$invalid && addProductForm.qty.$touched">Quantity required.</span>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s4">
								<input id="vendor" type="text" data-ng-model="product.vendor" name="vendor"
									class=""> <label for="">Vendor</label>
							</div>
							<div class="input-field col s3">
								<input id="vendorBillNo" type="text" data-ng-model="product.vendorBillNo" name="vendorBillNo"
									class=""> <label for="">Vendor Bill No.</label>
							</div>
						</div>
							<div class="row">
								<a class="waves-effect btn-danger waves-light btn pull-right" data-ng-click="reset()">RESET</a>&nbsp;&nbsp;
								<a class="waves-effect waves-light btn pull-right" data-ng-click="saveProduct()"
									data-ng-disabled="addProductForm.ProductName.$invalid ||
										addProductForm.batchNo.$invalid ||
										addProductForm.mfgDate.$invalid ||
										addProductForm.expDate.$invalid ||
										addProductForm.importedDate.$invalid ||
										addProductForm.mrp.$invalid ||
										addProductForm.rate.$invalid ||
										addProductForm.units.$invalid ||
										addProductForm.qty.$invalid">SUBMIT</a>
						</div>
					</form>
					<div class="clearBoth"></div>
				</div>

			</div>
		</div>
		<!--End Advanced Tables -->
	</div>
</div>

<jsp:include page="footer-and-floating-menu.jsp" />
<!-- /. PAGE INNER  -->
