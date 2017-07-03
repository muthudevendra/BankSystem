/**
 * Created by shehan on 7/2/2017.
 */
$(document).ready(function () {
    
    $(window).load(function () {
        var operationData = load_object_data('/admin/chart','GET','');
        console.log(operationData);
    });
    
    Morris.Donut({
        element: 'donut-example',
        data: [
            {label: "Download Sales", value: 100},
            {label: "In-Store Sales", value: 30},
            {label: "Mail-Order Sales", value: 20},
            {label: "Mail-Order Sales", value: 20}
        ],
        colors: [
            '#0BADF2',
            '#39B5C0',
            '#67C000',
            '#952342'
        ]
    });
    Morris.Donut({
        element: 'donut-example1',
        data: [
            {label: "Download Sales", value: 100},
            {label: "In-Store Sales", value: 30},
            {label: "Mail-Order Sales", value: 20},
            {label: "Mail-Order Sales", value: 20}
        ],
        colors: [
            '#0BADF2',
            '#39B5C0',
            '#67C000',
            '#952342'
        ]
    });
});
