<?php echo $header; ?><?php echo $column_left;   ?>
<div id="content">


<?php foreach ($customers as $customer) { 
   $data1[]=$customer['customer'];
   $data2[]=$customer['total'];
		
 } 
 $i=0;
 ?>

<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>

<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
<script>
$(function () {
    $('#container').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'กราฟแสดงลูกค้าที่ซื้อสินค้าสูงสุด'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: "คิดเป็น ",
            colorByPoint: true,
            data: [
			<?php foreach ($data1 as $key) { ?>
			{name: "<?php echo $key ;?>",y: <?php echo $data2[$i] ;?>}, 
			<?php $i=$i+1; } ?> 
			]
        }]
    });
});
</script>

</div>

<?php echo $footer; ?>