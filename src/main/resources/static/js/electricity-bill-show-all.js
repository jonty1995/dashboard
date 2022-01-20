const baseUrl = '/digital-studio/electricity-bill';
let dto = {};

$(document).ready(function() {
	showTable();

});
$("#txt-start-date").on("change", function() {
	dto.fromDt = $(this).val();
	showTable();
	$("#txt_search").val("");
});
$("#txt-end-date").on("change", function() {
	dto.toDt = $(this).val();
	showTable();
	$("#txt_search").val("");
});
$("#select_status").on("change", function() {
	dto.status = $("#select_status").val();
	$("#txt_search").val("");
});


let showTable = function() {
	//dto.fromDt = $("#txt-start-date").val();
	//dto.toDt = $("#txt-end-date").val();
	//dto.status = $("#select_status").val();

	$('#table-data tbody').empty();
	console.log(dto);
	axios.get(`${baseUrl}/getTableData`, { params: dto })
		.then(function(response) {
			let tableData = response.data;
			var row = "";
			if (tableData.length > 0) {

				for (var data of tableData) {
					row = `<tr>`;
					row += `<td scope='row' class='nowrap'><a href='/contractBilling/accSetup/getAllCrfDetails/${data.customerId}'>${data.customerId || '-'}</a></td>`;
					row += `<td scope='row' class='nowrap'>${data.customerName || '-'}</td>`;
					row += `<td scope='row' class='nowrap'>${data.mobileNumber || '-'}</td>`;
					row += `<td scope='row' class='nowrap'>${data.amount || '-'}</td>`;
					row += `<td scope='row' class='nowrap'>${moment(data.billEntryDate).format("DD-MMM-YYYY") || '-'}</td>`;
					row += `<td scope='row' class='nowrap'>${data.status || '-'}</td>`;
					row += `</tr>`;
					$('#table-data tbody').append(row);
				}
			} else {
				row = "<tr><td colspan='"
					+ $('#table-data thead th').length
					+ "'>No Record(s) Available</td></tr>";
				$('#table-data tbody').append(row);

			}


		})
		.catch(function() {

		});


}