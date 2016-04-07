<?php echo $header; ?><?php echo $column_left;   ?>
<div id="content">


<?php foreach ($products as $product) { 
   $data1[]=$product['name'];
   $data2[]=$product['total'];
		
 } 
 $i=0;
 ?>

<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/highcharts-3d.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>



<div id="container" style="min-width: 410px; max-width: 600px; height: 400px; margin: 0 auto"></div>
<script>
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'pie',
            options3d: {
                enabled: true,
                alpha: 45
            }
        },
        title: {
            text: 'กราฟแสดงสินค้าที่มียอดขายสูงสุด'
        },
        subtitle: {
            //text: '3D donut in Highcharts'
        },
        plotOptions: {
            pie: {
                innerSize: 100,
                depth: 45
            }
        },
        series: [{
            name: 'จำนวนเงิน ',
            data: [
              <?php foreach ($data1 as $key) { ?>
                 ['<?php echo $key ;?>', <?php echo $data2[$i] ;?>],
            <?php $i=$i+1; } ?> 
            ]
        }]
    });
});
</script>
</div>

<?php echo $footer; ?>