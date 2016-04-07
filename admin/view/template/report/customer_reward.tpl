<?php echo $header; ?><?php echo $column_left; //var_dump($results);
$get[] = array();
foreach ($results as $key=>$val) { 
	 $get[$val['zone_id']] = $val['total'] ; 		  
}

?>
<script src="http://code.highcharts.com/maps/highmaps.js"></script>
<script src="http://code.highcharts.com/maps/modules/exporting.js"></script>
<script src="http://code.highcharts.com/mapdata/countries/th/th-all.js"></script>
<script type="text/css">  
#container {
    height: 500px; 
    min-width: 310px; 
    max-width: 800px; 
    margin: 0 auto; 
}
.loading {
    margin-top: 10em;
    text-align: center;
    color: gray;
}
</script>

<div id="container">
<script>
$(function () {

    // Prepare demo data
    var data = [
        {
            "hc-key": "th-pr",
            "value": <?php echo $get[3234]; ?> 
        },
        {
            "hc-key": "th-so",
            "value": <?php echo $get[3252]; ?> 	  
        },
        {
            "hc-key": "th-ct",
            "value": <?php echo $get[3197]; ?> 
        },
        {
            "hc-key": "th-4255",
            "value": <?php echo "0"; ?> 
        },
        {
            "hc-key": "th-pg",
            "value": <?php echo $get[3227]; ?> 
        },
        {
            "hc-key": "th-st",
            "value": <?php echo $get[3254]; ?> 
        },
        {
            "hc-key": "th-kr",
            "value": <?php echo $get[3206]; ?> 
        },
        {
            "hc-key": "th-sa",
            "value": <?php echo $get[3228]; ?> 
        },
        {
            "hc-key": "th-tg",
            "value": <?php echo $get[3257]; ?> 
        },
        {
            "hc-key": "th-tt",
            "value": <?php echo $get[3258]; ?> 
        },
        {
            "hc-key": "th-pl",
            "value": <?php echo $get[3228]; ?> 
        },
        {
            "hc-key": "th-ps",
            "value": <?php echo $get[3233]; ?> 
        },
        {
            "hc-key": "th-kp",
            "value": <?php echo $get[3203]; ?> 
        },
        {
            "hc-key": "th-pc",
            "value": <?php echo $get[3232]; ?> 
        },
        {
            "hc-key": "th-sh",
            "value": <?php echo $get[3253]; ?> 
        },
        {
            "hc-key": "th-at",
            "value": <?php echo $get[3190]; ?> 
        },
        {
            "hc-key": "th-cn",
            "value": <?php echo $get[3195]; ?> 
        },
        {
            "hc-key": "th-lb",
            "value": <?php echo $get[3210]; ?> 
        },
        {
            "hc-key": "th-pa",
            "value": <?php echo $get[3191]; ?> 
        },
        {
            "hc-key": "th-np",
            "value": <?php echo $get[3215]; ?> 
        },
        {
            "hc-key": "th-sb",
            "value": <?php echo $get[3249]; ?> 
        },
        {
            "hc-key": "th-bm",
            "value": <?php echo $get[3192]; ?> 
        },
        {
            "hc-key": "th-pt",
            "value": <?php echo $get[3225]; ?> 
        },
        {
            "hc-key": "th-no",
            "value": <?php echo $get[3224]; ?> 
        },
        {
            "hc-key": "th-sp",
            "value": <?php echo $get[3244]; ?> 
        },
        {
            "hc-key": "th-ss",
            "value": <?php echo $get[3245]; ?> 
        },
        {
            "hc-key": "th-sm",
            "value": <?php echo $get[3246]; ?> 
        },
        {
            "hc-key": "th-pe",
            "value": <?php echo $get[3231]; ?> 
        },
        {
            "hc-key": "th-cc",
            "value": <?php echo $get[3194]; ?> 
        },
        {
            "hc-key": "th-nn",
            "value": <?php echo $get[3214]; ?> 
        },
        {
            "hc-key": "th-cb",
            "value": <?php echo $get[3200]; ?> 
        },
        {
            "hc-key": "th-br",
            "value": <?php echo $get[3193]; ?> 
        },
        {
            "hc-key": "th-kk",
            "value": <?php echo $get[3205]; ?> 
        },
        {
            "hc-key": "th-ph",
            "value": <?php echo $get[3230]; ?> 	  
        },
        {
            "hc-key": "th-kl",
            "value": <?php echo $get[3202]; ?> 
        },
        {
            "hc-key": "th-si",
            "value": <?php echo $get[3250]; ?> 
        },
        {
            "hc-key": "th-re",
            "value": <?php echo $get[3241]; ?> 
        },
        {
            "hc-key": "th-le",
            "value": <?php echo $get[3209]; ?> 
        },
        {
            "hc-key": "th-nk",
            "value": <?php echo $get[3223]; ?> 
        },
        {
            "hc-key": "th-ac",
            "value": <?php echo $get[3189]; ?> 
        },
        {
            "hc-key": "th-md",
            "value": <?php echo $get[3213]; ?> 
        },
        {
            "hc-key": "th-nw",
            "value": <?php echo $get[3221]; ?> 
        },
        {
            "hc-key": "th-pi",
            "value": <?php echo $get[3226]; ?> 
        },
        {
            "hc-key": "th-rn",
            "value": <?php echo $get[3238]; ?> 
        },
        {
            "hc-key": "th-cp",
            "value": <?php echo $get[3201]; ?> 
        },
        {
            "hc-key": "th-nt",
            "value": <?php echo $get[3219]; ?> 	  
        },
        {
            "hc-key": "th-sg",
            "value": <?php echo $get[3251]; ?> 
        },
        {
            "hc-key": "th-py",
            "value": <?php echo $get[3229]; ?> 
        },
        {
            "hc-key": "th-kn",
            "value": <?php echo $get[3204]; ?> 
        },
        {
            "hc-key": "th-tk",
            "value": <?php echo $get[3256]; ?> 	  
        },
        {
            "hc-key": "th-pk",
            "value": <?php echo $get[3237]; ?> 
        },
        {
            "hc-key": "th-ur",
            "value": <?php echo $get[3259]; ?> 
        },
        {
            "hc-key": "th-sk",
            "value": <?php echo $get[3242]; ?> 
        },
        {
            "hc-key": "th-ry",
            "value": <?php echo $get[3240]; ?> 
        },
        {
            "hc-key": "th-nr",
            "value": <?php echo $get[3217]; ?> 
        },
        {
            "hc-key": "th-su",
            "value": <?php echo $get[3255]; ?> 
        },
        {
            "hc-key": "th-nf",
            "value": <?php echo $get[3216]; ?> 
        },
        {
            "hc-key": "th-bk",
            "value": <?php echo $get[3265]; ?> 
        },
        {
            "hc-key": "th-mh",
            "value": <?php echo $get[3211]; ?> 
        },
        {
            "hc-key": "th-pu",
            "value": <?php echo $get[3235]; ?> 	  
        },
        {
            "hc-key": "th-yl",
            "value": <?php echo $get[3263]; ?> 
        },
        {
            "hc-key": "th-cr",
            "value": <?php echo $get[3199]; ?> 	  
        },
        {
            "hc-key": "th-cm",
            "value": <?php echo $get[3198]; ?> 
        },
        {
            "hc-key": "th-lg",
            "value": <?php echo $get[3207]; ?> 
        },
        {
            "hc-key": "th-ln",
            "value": <?php echo $get[3208]; ?> 
        },
        {
            "hc-key": "th-na",
            "value": <?php echo $get[3220]; ?> 
        },
        {
            "hc-key": "th-ud",
            "value": <?php echo $get[3262]; ?> 
        },
        {
            "hc-key": "th-ut",
            "value": <?php echo $get[3261]; ?> 
        },
        {
            "hc-key": "th-pb",
            "value": <?php echo $get[3236]; ?> 
        },
        {
            "hc-key": "th-ns",
            "value": <?php echo $get[3218]; ?> 
        },
        {
            "hc-key": "th-sr",
            "value": <?php echo $get[3247]; ?> 
        },
        {
            "hc-key": "th-rt",
            "value": <?php echo $get[3239]; ?> 
        },
        {
            "hc-key": "th-ys",
            "value": <?php echo $get[3264]; ?> 
        },
        {
            "hc-key": "th-cy",
            "value": <?php echo $get[3196]; ?> 
        },
        {
            "hc-key": "th-ms",
            "value": <?php echo $get[3212]; ?> 
        },
        {
            "hc-key": "th-un",
            "value": <?php echo $get[3261]; ?> 
        },
        {
            "hc-key": "th-sn",
            "value": <?php echo $get[3243]; ?> 
        },
        {
            "hc-key": "th-nb",
            "value": <?php echo $get[3222]; ?> 
        }
    ];

    // Initiate the chart
    $('#container').highcharts('Map', {

        title : {
            text : 'กราฟแสดงจำนวนรายการสั่งซื้อในแต่ละจังหวัด'
        },

        subtitle : {
            //text : 'Source map: <a href="http://code.highcharts.com/mapdata/countries/th/th-all.js">Thailand</a>'
        },

        mapNavigation: {
            enabled: true,
            buttonOptions: {
                verticalAlign: 'bottom'
            }
        },

        colorAxis: {
            min: 0
        },

        series : [{
            data : data,
            mapData: Highcharts.maps['countries/th/th-all'],
            joinBy: 'hc-key',
            name: 'มีจำนวนรายการสั่งซื้อ :',
            states: {
                hover: {
                    color: '#BADA55'
                }
            },
            dataLabels: {
                enabled: true,
                format: '{point.name}'
            }
        }]
    });
});
</script>
</div>


  <script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	url = 'index.php?route=report/customer_online&token=<?php echo $token; ?>';
	
	var filter_customer = $('input[name=\'filter_customer\']').val();
	
	if (filter_customer) {
		url += '&filter_customer=' + encodeURIComponent(filter_customer);
	}
		
	var filter_ip = $('input[name=\'filter_ip\']').val();
	
	if (filter_ip) {
		url += '&filter_ip=' + encodeURIComponent(filter_ip);
	}
				
	location = url;
});
//--></script></div>
<?php echo $footer; ?>