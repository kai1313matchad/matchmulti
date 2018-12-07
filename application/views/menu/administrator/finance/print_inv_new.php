<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Project Match Terpadu" content="Match Terpadu">
    <meta name="Author" content="Kaisha Satrio">
    <title><?php echo $title;?></title>
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet">   
    <!-- MetisMenu CSS -->
    <link href="<?php echo base_url('assets/sbadmin/metisMenu/metisMenu.min.css')?>" rel="stylesheet">
    <!-- sbadmin -->
    <link href="<?php echo base_url('assets/sbadmin/css/sb-admin-2.css')?>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url('assets/datatables/css/dataTables.bootstrap.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/datatables/css/dataTables.responsive.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/addons/bootstrap-datetimepicker.min.css')?>" rel="stylesheet">    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
    <link href="<?php echo base_url('assets/addons/select2-bootstrap.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/addons/extra.css')?>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<?php echo base_url('assets/font-awesome/css/font-awesome.min.css')?>" rel="stylesheet"> 
    <style>
        .invoice
        {
            position: relative;
            background-color: #FFF;
            min-height: 680px;
            padding: 0px;
            font-family: Times New Roman;
        }
        .invoice header
        {
            padding: 0px 0px 0px 0px;
            margin-bottom: 0px;
            border-bottom: 1px solid #3989c6;
        }
        .invoice header img
        {
            max-width: 200px;
            margin-top: 0;
            margin-bottom: 0;
        }
        .invoice .company-details
        {
            text-align: right;
            margin-top: 0;
            margin-bottom: 0;
        }
        .invoice main
        {
            padding: 0px 0px 0px 0px;
            margin-bottom: 0px;
        }
        .invoice .to-details
        {
            text-align: left;
        }
        .invoice .to-name
        {
            font-weight: bold;
        }
        .invoice .to-name .to-address .to-city
        {
            margin-top: 0;
            margin-bottom: 0;
        }
        .invoice .invoice-reff
        {
            text-align: center;
        }        
        .invoice .invoice-info
        {
            text-align: right;
        }
        .invoice-info .reff-content
        {
            margin-top: 0;
            margin-bottom: 0;
        }
        .invoice-info .info-code
        {
            font-weight: bold;
        }
        .invoice-info .info-code .info-date
        {
            margin-top: 0;
            margin-bottom: 0;
        }
        .table thead th
        {
            margin: 0 !important;
            padding-top: 0 !important;
            padding-bottom: 0 !important;
            border: solid 1px black !important;
        }
        .table tfoot th
        {
            margin: 0 !important;
            padding-top: 0 !important;
            padding-bottom: 0 !important;
            border: solid 1px black !important;
        }
        .table .notice-row
        {
            height: 61px !important;
        }
        .table td
        {
            margin: 0 !important;
            padding-top: 0 !important;
            padding-bottom: 0 !important;
            border-top: none !important;
            border-bottom: none !important;
            border-left: solid 1px black !important;
            border-right: solid 1px black !important;            
        }
        .table .blank-row
        {
            height: 25px !important;
            background-color: #FFFFFF;
            border: none;
        }
        .invoice .loc-info .loc-notice
        {
            margin-top: 0;
            margin-bottom: 0;
        }
        footer
        {
            padding-top: -1000px;
        }
        footer .signature
        {
            padding-top: 20px;
            text-align: center;
        }
        footer .foot-notice
        {
            margin-top: 0;
            margin-bottom: 0;
        }
        @media print
        {
            .hidden-print
            {
                display: none;
            }
        }
    </style>
</head>
<body>
    <div class="container hidden-print">
        <div class="row">
            <div class="col-sm-2 col-xs-3">
                <button class="btn btn-block btn-primary" type="button" onclick="printDiv()">Print</button>
            </div>
        </div>
    </div>
    <div class="container invoice" id="invoice-div">
        <header>
            <div class="row">
                <div class="col-sm-3 col-xs-3">
                    <img id="img_logo" class="img-responsive" src="">
                </div>
                <div class="col-sm-9 col-xs-9 company-details">
                    <div><span name="comp-address"></span></div>
                    <div>Phone <span name="comp-phone"></span></div>
                    <div>Fax <span name="comp-fax"></span></div>
                </div>
            </div>
        </header>
        <main>
            <div class="row">
                <div class="col-sm-4 col-xs-4 to-details">
                    <div>DITUJUKAN UNTUK :</div>
                    <div class="to-name" name="inv_to"></div>
                    <div class="to-address"><span name="inv_to_addr"></span></div>
                </div>
                <div class="col-sm-8 col-xs-8 invoice-info">
                    <h4 class="info-code" name="inv_code"></h4>
                    <div class="reff-content">Tgl. BL : <span name="inv_date"></span></div>
                    <div class="reff-content">Jatuh Tempo : <span name="inv_due_date"></span></div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-xs-12 table-responsive">
                    <table class="table table-bordered" border="0" cellspacing="0" cellpadding="0" width="100%">
                        <thead>
                            <tr>
                                <th class="text-center col-xs-1 col-sm-1">#</th>
                                <th class="text-center col-xs-7 col-sm-7">Deskripsi</th>
                                <th class="text-center col-xs-2 col-sm-2">Qty</th>
                                <th class="text-center col-xs-2 col-sm-2">Jumlah</th>
                            </tr>
                        </thead>
                        <!-- <tbody id="tb_content"></tbody>
                        <tfoot id="tb_foot">
                            <tr>
                                <th rowspan="4" colspan="2">
                                    <div name="loc-info"><span name="loc_info"></span></div>
                                    <div class="loc-notice">Notice : <span name="prc_info"></span></div>
                                </th>
                                <th class="text-right">Diskon Rp</th>
                                <th class="text-right chgnum" name="prc_disc"></th>
                            </tr>
                            <tr>
                                <th class="text-right">PPN Rp</th>
                                <th class="text-right chgnum" name="prc_tax"></th>
                            </tr>
                            <tr>
                                <th class="text-right">Biaya Rp</th>
                                <th class="text-right chgnum" name="prc_cost"></th>
                            </tr>
                            <tr>
                                <th class="text-right">Total Rp</th>
                                <th class="text-right chgnum" name="prc_gt"></th>
                            </tr>
                        </tfoot> -->
                    </table>
                </div>
            </div>
        </main>
        <!-- <footer>
            <div class="row text-center">
                <div class="col-xs-3 col-sm-3">
                    <div>Pemesan</div>
                </div>
                <div class="col-xs-3 col-sm-3">
                    <div>Mengetahui</div>
                </div>
                <div class="col-xs-3 col-sm-3">
                    <div>Penerima</div>
                </div>
                <div class="col-xs-3 col-sm-3">
                    Surabaya, <span name="prc_print_date"></span>
                </div>
            </div>
            <div class="row signature">
                <div class="col-xs-3 col-sm-3">
                    <div>(................)</div>
                </div>
                <div class="col-xs-3 col-sm-3">
                    <div>(................)</div>
                </div>
                <div class="col-xs-3 col-sm-3">
                    <div>(................)</div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 text-center">
                    <div class="foot-notice"><strong>Surat Order Asli HARUS dilampirkan saat penagihan</strong></div>
                    <div class="foot-notice">CC : Lembar 1: Supplier; Lembar 2: Accounting; Lembar 3: Direksi; Lembar 4: Purchasing</div>
                </div>                
            </div>
        </footer> -->
    </div>
    <!-- jQuery -->
    <?php include 'application/views/layout/administrator/jspack.php' ?>
    <script>
        $(document).ready(function()
        {
            var id = <?= $id; ?>;
            pick_branch(<?= $this->session->userdata('user_branch');?>);
            pick_invoice(id);
            pick_bankprint(<?= $this->session->userdata('user_branch');?>);
        });
        function pick_branch(id)
        {
            $.ajax({
                url : "<?php echo site_url('administrator/Searchdata/pick_branch/')?>" + id,
                type: "GET",
                dataType: "JSON",
                success: function(data)
                {
                    var newSrc = "<?php echo base_url()?>/assets/img/branchlogo/"+data.BRANCH_LOGO;
                    $('#img_logo').attr('src', newSrc);
                    $('[name="comp-address"]').text(data.BRANCH_ADDRESS+', '+data.BRANCH_CITY);
                    $('[name="comp-phone"]').text(data.BRANCH_PHONE);
                    $('[name="comp-fax"]').text(data.BRANCH_FAX);
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    alert('Error get data from ajax');
                }
            })
        }
        function pick_invoice(id)
        {
            $.ajax({
                url : "<?php echo site_url('administrator/Finance/get_inv/')?>"+id,
                type: "GET",
                dataType: "JSON",
                success: function(data)
                {
                    var id = data.INV_ID;
                    var invdate = moment(data.INV_DATE).locale('id').format('DD-MMMM-YYYY')
                    var duedate = moment(data.INV_DATE).add(data.INV_TERM,'days').locale('id').format('DD-MMMM-YYYY');
                    $('[name="inv_date"]').text(invdate);
                    $('[name="inv_due_date"]').text(duedate);
                    $('[name="inv_code"]').text(data.INV_CODE);
                    $('[name="inv_to"]').text(data.CUST_NAME);
                    $('[name="inv_to_addr"]').text(data.CUST_ADDRESS);
                    $('[name="client-city-postal"]').text(data.CUST_CITY+', '+data.CUST_POSTAL);
                    $('[name="client-name"]').text(data.CUST_NAME);
                    $('[name="inv-info"]').text(data.INV_INFO);
                    pick_invdet(id);
                    pick_sub(id);
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    alert('Error get data from ajax');
                }
            });
        }
        function pick_cust(id)
        {
            $.ajax({
                url : "<?php echo site_url('administrator/Marketing/ajax_pick_cust/')?>" + id,
                type: "GET",
                dataType: "JSON",
                success: function(data)
                {   
                    $('[name="print_clientname"]').text(data.CUST_NAME);
                    $('[name="print_clientnpwp"]').text(data.CUST_NPWPACC);
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    alert('Error get data from ajax');
                }
            });
        }
        function pick_sub(id)
        {
            $.ajax({
                url : "<?php echo site_url('administrator/Finance/get_subinvdet/')?>" + id,
                type: "GET",
                dataType: "JSON",
                success: function(data)
                {
                    pick_spelledtotal(data.gt1);
                    $('[name="grand-total"]').text(money_conv(data.gt1));
                    $('[name="sub-total"]').text(money_conv(data.sub1));
                    $('[name="tax-total"]').text(money_conv(data.ppn1));
                    $('[name="inv_pph"]').text(money_conv(data.pph1));
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    alert('Error get data from ajax');
                }
            });
        }
        function pick_invdet(id)
        {
            $.ajax({
                url : "<?php echo site_url('administrator/Finance/get_invdet/')?>" + id,
                type: "GET",
                dataType: "JSON",
                success: function(data)
                {   
                    for (var i = 0; i < data.length; i++)
                    {
                        var $tr = $('<tr>').append(
                            $('<td class="no text-center">'+(i+1)+'</td>'),
                            $('<td>').css('text-align','center').text(data[i]["APPR_CODE"]),
                            $('<td>').css('text-align','center').text(data[i]["APPR_PO"]),
                            $('<td>').css('text-align','center').text(data[i]["LOC_NAME"]),
                            $('<td>').css('text-align','center').text(data[i]["TERMSDET_INFO"]),
                            $('<td class="total text-right">'+money_conv(data[i]["INVDET_SUB"])+'</td>')
                            ).appendTo('#tb_content');
                    }                   
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    alert('Error get data from ajax');
                }
            });
        }
        function pick_getappterm(id)
        {
            $.ajax({
                url : "<?php echo site_url('administrator/Marketing/get_appterm/')?>" + id,
                type: "GET",
                dataType: "JSON",
                success: function(data)
                {   
                    var all='';
                    for (var i = 0; i < data.length; i++)
                    {
                        var $ctn = data[i]["TERMSDET_CODE"]+' :'+data[i]["TERMSDET_PERC"]+'% '+data[i]["TERMSDET_INFO"];                        
                        if(i==0)
                        {
                            all = all + $ctn;
                        }
                        else
                        {
                            all = all +', '+ $ctn;
                        }
                    }
                    $('<span>').text(all).appendTo('#pcontent');                    
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    alert('Error get data from ajax');
                }
            });
        }
        function pick_spelledtotal(v)
        {
            $.ajax({
                url : "<?php echo site_url('administrator/Finance/get_numbsp/')?>" + v,
                type: "GET",
                dataType: "JSON",
                success: function(data)
                {   
                    $('[name="spelled"]').text(data.terbilang+' Rupiah');
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    alert('Error get data from ajax');
                }
            });
        }
        function pick_bankprint(id)
        {
            $.ajax({
                url : "<?php echo site_url('administrator/Finance/get_printbankinv/')?>"+id,
                type: "GET",
                dataType: "JSON",
                success: function(data)
                {   
                    $('[name="bank-dest"]').text(data.PRINT_BANKINVOICE);
                },
                error: function (jqXHR, textStatus, errorThrown)
                {
                    alert('Error get data from ajax');
                }
            });
        }
    </script>
</body>
</html>