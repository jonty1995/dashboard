const baseUrl = '/digital-studio/electricity-bill';
let formObj = {};
$(document).ready(function() {
	commonFunctions();


});
let commonFunctions = function() {
	formObj.newCustomer = true;
}

$(document).on('keyup', '#text-mobile-number', function() {
	console.log($(this).val());
	if ($(this).val().length != 10) {
		return;
	}
	axios.get(`${baseUrl}/getExistingCustomer/${$(this).val()}`)
		.then(function(response) {


			if (response.status == 200) {
				$('#text-customer-name').val(response.data.customerName);
				formObj.newCustomer = false;
			} else {
				$('#text-customer-name').val('');
			}

		})
		.catch(function() {
			$('#text-customer-name').val('');
		});


	axios.get(`${baseUrl}/getExistingBillCustomerId/${$(this).val()}`)
		.then(function(response) {

			console.log(response.data);
			$('#select-customer-id').empty();
			for (let data of response.data) {
				$('#select-customer-id').append(`<option value="${data.billCustomerId}">
                                       ${data.billCustomerId}
                                  </option>`);
			}
			$('#select-customer-id').append(`<option value="new">New Customer...</option>`);

			$('#select-customer-id').change();
		}).catch(function() {

		});



});


$(document).on('change', '#select-customer-id', function() {
	if ($('#select-customer-id').val() == 'new') {
		$('#text-customer-id').show();

	} else {
		$('#text-customer-id').hide();

	}

});

$(document).on('click', '#btn-save', function() {

	formObj.mobileNumber = $('#text-mobile-number').val();
	formObj.customerName = $('#text-customer-name').val();
	if ($('#select-customer-id').val() == 'new') {
		formObj.customerId = $('#text-customer-id').val();
	} else {
		formObj.customerId = $('#select-customer-id').val();
	}
	formObj.amount = $('#text-amount').val();

	axios.post(`${baseUrl}/save`, formObj)
		.then(function(response) {
			console.log(response);
		});


	Swal.fire({
		icon: 'error',
		title: 'Oops...',
		text: 'Something went wrong!'
	})
});


