<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>



           	
<?php foreach ($products as $product) { 
 $data1[]=$product['name'];
 $data2[]=$product['viewed'];
		
 } 
 $i=0;
 ?>


<div style="min-width: 111px; height: 111px; margin: 0 auto"></div>
<script>
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'กราฟแสดงจำนวนผู้เข้าชมสินค้า'
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            type: 'category',
            labels: {
                rotation: -45,
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: 'ผู้เข้าชม'
            }
        },
        legend: {
            enabled: false
        },
        tooltip: {
            pointFormat: 'ผู้เข้าชม: <b>{point.y:.1f} วิว</b>'
        },
        series: [{
            name: 'Population',
			
            data: [    
			<?php foreach ($data2 as $key) { ?>

			['<?php echo $data1[$i] ;?>',<?php echo $key ;?>],
            
			<?php $i=$i+1; } ?>
            ], 
			

            dataLabels: {
                enabled: true,
                rotation: -90,
                color: '#FFFFFF',
                align: 'right',
                format: '{point.y:.1f}', // one decimal
                y: 10, // 10 pixels down from the top
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        }]
    });
});

</script>

</div>

<?php echo $footer; ?>