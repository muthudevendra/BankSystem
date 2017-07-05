/**
 * Created by shehan on 7/2/2017.
 */
$(document).ready(function () {
    var val =[],key =[], backgColor=[];
    $(window).load(function () {
        var operationData = load_object_data('/admin/chart','GET','');
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
        var ctx1 = document.getElementById("doughnutChart").getContext('2d');
        var accountDoughnut = new Chart(ctx1, {
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
        accountDoughnut.data.labels = key;
        accountDoughnut.data.datasets.data = val;
    });
    
    function rgbaColorGenerator() {
        var letters = '0123456789ABCDEF';
        var color = '#';
        for (var i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }
    
});
