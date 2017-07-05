/**
 * Created by shehan on 7/2/2017.
 *
 */
$(document).ready(function () {

    $(window).load(function () {
        var accountTypeOperationData = load_object_data('/admin/chart','GET','');
        var accountChart = document.getElementById("doughnutChart").getContext('2d');
        createChart(accountTypeOperationData,accountChart);

        var transferOperationData = load_object_data('/admin/transferChart','GET','');
        var transferChart = document.getElementById("doughnutTransferChart").getContext('2d');
        createChart(transferOperationData,transferChart);

        var customerAccountCount = load_object_data('/admin/customerAccountCount','GET','');
        document.getElementById('activeAccount').innerHTML = customerAccountCount;

        var customerCount = load_object_data('/admin/customerCount','GET','');
        document.getElementById('activeCustomers').innerHTML = customerCount;

        var transferCount = load_object_data('/admin/transferCount','GET','');
        document.getElementById('transfreCount').innerHTML = transferCount;
    });

    function createChart(operationData,ctx) {
        var val =[],key =[], backgColor=[];

        var json = $.parseJSON(operationData);
        for(var obj in json){
            var keyV , valV, color;
            keyV = obj;
            valV = json[obj];
            key.push(keyV);
            val.push(valV);
            color = rgbaColorGenerator();
            backgColor.push(color);
        }

        var doughnutChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: key,
                datasets: [{
                    data: val,
                    backgroundColor: backgColor,
                    borderWidth: 0
                }]
            },
            options: {
                animation: {
                    animateRotate: false,
                    animateScale: true
                }
            }
        });
        doughnutChart.data.labels = key;
        doughnutChart.data.datasets.data = val;
    }
    
    function rgbaColorGenerator() {
        var letters = '0123456789ABCDEF';
        var color = '#';
        for (var i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }
    
});
