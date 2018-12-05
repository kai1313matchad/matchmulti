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
    <style type="text/css">
        #invoice
        {
            padding: 10px;
        }
        .invoice 
        {
            position: relative;
            background-color: #FFF;
            min-height: 680px;
            padding: 15px
        }
        .invoice header 
        {
            padding: 10px 0;
            margin-bottom: 20px;
            border-bottom: 1px solid #3989c6
        }
        .invoice .company-details 
        {
            text-align: right
        }
        .invoice .company-details .name 
        {
            margin-top: 0;
            margin-bottom: 0
        }
        .invoice .contacts 
        {
            margin-bottom: 20px
        }
        .invoice .invoice-to 
        {
            text-align: left
        }
        .invoice .invoice-to .to 
        {
            margin-top: 0;
            margin-bottom: 0
        }
        .invoice .invoice-details 
        {
            text-align: right
        }
        .invoice .invoice-details .invoice-id 
        {
            margin-top: 0;
            color: #3989c6
        }
        .invoice main 
        {
            padding-bottom: 50px
        }
        .invoice main .thanks 
        {
            margin-top: -100px;
            font-size: 2em;
            margin-bottom: 50px
        }
        .invoice main .notices 
        {
            padding-left: 6px;
            border-left: 6px solid #3989c6
        }
        .invoice main .notices .notice 
        {
            font-size: 1.2em
        }
        .invoice section .notices 
        {
            padding-left: 6px;
            border-left: 6px solid #3989c6
        }
        .invoice section .notices .notice 
        {
            font-size: 1.2em
        }      
        .invoice table 
        {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-bottom: 20px
        }
        .invoice table td,.invoice table th 
        {
            padding: 15px;
            background: #eee;
            border-bottom: 1px solid #fff
        }
        .invoice table th 
        {
            white-space: nowrap;
            font-weight: 400;
            font-size: 14px
        }
        .invoice table td h3 
        {
            margin: 0;
            font-weight: 400;
            color: #3989c6;
            font-size: 1.2em
        }
        .invoice table .qty,.invoice table .total,.invoice table .unit 
        {
            text-align: right;
            font-size: 1.2em
        }
        .invoice table .no 
        {
            color: #fff;
            font-size: 1.2em;
            background: #3989c6
        }
        .invoice table .unit 
        {
            background: #ddd
        }
        .invoice table .total 
        {
            background: #3989c6;
            color: #fff
        }
        .invoice table tbody tr:last-child td 
        {
            border: none
        }
        .invoice table tfoot td 
        {
            background: 0 0;
            border-bottom: none;
            /*white-space: nowrap;*/
            text-align: right;
            /*padding: 10px 20px;*/
            font-size: 1.2em;
            border-top: 1px solid #aaa
        }
        .invoice table tfoot tr:first-child td 
        {
            border-top: none;
        }
        .invoice table tfoot tr:last-child td 
        {
            color: #3989c6;
            font-size: 1.4em;
            border-top: 1px solid #3989c6
        }
        .invoice table tfoot tr td:first-child 
        {
            border: none;
        }
        .invoice table tfoot tr td
        {
            border: none;
        }
        .invoice footer 
        {
            width: 100%;
            text-align: center;
            color: #777;
            border-top: 1px solid #aaa;
            padding: 8px 0
        }
        .img-logo-size
        {
            
        }
        @media print 
        {
            .invoice 
            {
                font-size: 10px!important;
                overflow: hidden!important
            }
            .invoice footer 
            {
                position: absolute;
                bottom: 10px;
                page-break-after: always;
            }
            .invoice>div:last-child 
            {
                page-break-before: always;
            }
        }
    </style>
</head>
<body>
    <div id="invoice">
        <div class="toolbar hidden-print">
            <div class="text-right">
                <button id="printInvoice" class="btn btn-info"><i class="fa fa-print"></i> Print</button>
                <button class="btn btn-info"><i class="fa fa-file-pdf-o"></i> Export as PDF</button>
            </div>
            <hr>
        </div>
        <div class="invoice overflow-auto">
            <div style="min-width: 600px">
                <header>
                    <div class="row">
                        <div class="col-xs-3">
                            <img id="img-logo" src="" data-holder-rendered="true" class="img-responsive" />
                        </div>
                        <div class="col-xs-9 company-details">                            
                            <div>Jl. Lesti No.42 Surabaya 60241</div>
                            <div>Telp. (031) 567 8346 (Hunting)</div>
                            <div>Fax. (031) 568 0646</div>
                            <div>Email : Finance@match-advertising.com</div>
                        </div>
                    </div>
                </header>
                <main>
                    <div class="row contacts">
                        <div class="col-xs-6 invoice-to">
                            <div class="text-gray-light">DITUJUKAN KEPADA :</div>
                            <h2 class="to" name="client-name">John Doe</h2>
                            <div class="address"><span name="client-addr">796 Silver Harbour, TX 79273, US</span></div>
                            <div class="address"><span name="client-city-postal">796 Silver Harbour, TX 79273, US</span></div>
                        </div>
                        <div class="col-xs-6 invoice-details">
                            <h1 class="invoice-id" name="inv-code"></h1>
                            <div class="date">Tgl. Terbit: <span name="inv-date">01/10/2018</span></div>
                            <div class="date">Tgl. Jatuh Tempo: <span name="inv-due-date">30/10/2018</span></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-xs-12 table-responsive">
                            <table class="table" border="0" cellspacing="0" cellpadding="0" width="100%">
                                <thead>
                                    <tr>
                                        <th class="col-xs-1 text-center">No</th>
                                        <th class="col-xs-2 text-center">No Approval</th>
                                        <th class="col-xs-2 text-center">No PO</th>
                                        <th class="col-xs-2 text-center">Lokasi</th>
                                        <th class="col-xs-3 text-center">Keterangan</th>
                                        <th class="col-xs-2 text-center">Nominal</th>
                                    </tr>
                                </thead>
                                <tbody id="tb_content"></tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="4"></td>
                                        <td>SUBTOTAL</td>
                                        <td class="text-right"><span name="sub-total"></span></td>
                                    </tr>
                                    <tr>
                                        <td colspan="4"></td>
                                        <td>PPN</td>
                                        <td class="text-right"><span name="tax-total"></span></td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" colspan="4"><span># <i name="spelled"></i> #</span></td>
                                        <td>GRAND TOTAL</td>
                                        <td class="text-right"><span name="grand-total"></span></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <!-- <table border="0" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th class="text-left">DESKRIPSI</th>
                                    <th class="text-right">KETERANGAN</th>
                                    <th class="text-right">HOURS</th>
                                    <th class="text-right">TOTAL</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="no">04</td>
                                    <td class="text-left"><h3>
                                        <a target="_blank" href="https://www.youtube.com/channel/UC_UMEcP_kF0z4E6KbxCpV1w">
                                        Youtube channel
                                        </a>
                                        </h3>
                                       <a target="_blank" href="https://www.youtube.com/channel/UC_UMEcP_kF0z4E6KbxCpV1w">
                                           Useful videos
                                       </a> 
                                       to improve your Javascript skills. Subscribe and stay tuned :)
                                    </td>
                                    <td class="unit">$0.00</td>
                                    <td class="qty">100</td>
                                    <td class="total">$0.00</td>
                                </tr>
                                <tr>
                                    <td class="no">01</td>
                                    <td class="text-left"><h3>Website Design</h3>Creating a recognizable design solution based on the company's existing visual identity</td>
                                    <td class="unit">$40.00</td>
                                    <td class="qty">30</td>
                                    <td class="total">$1,200.00</td>
                                </tr>
                                <tr>
                                    <td class="no">02</td>
                                    <td class="text-left"><h3>Website Development</h3>Developing a Content Management System-based Website</td>
                                    <td class="unit">$40.00</td>
                                    <td class="qty">80</td>
                                    <td class="total">$3,200.00</td>
                                </tr>
                                <tr>
                                    <td class="no">03</td>
                                    <td class="text-left"><h3>Search Engines Optimization</h3>Optimize the site for search engines (SEO)</td>
                                    <td class="unit">$40.00</td>
                                    <td class="qty">20</td>
                                    <td class="total">$800.00</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2">SUBTOTAL</td>
                                    <td>$5,200.00</td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2">TAX 25%</td>
                                    <td>$1,300.00</td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2">GRAND TOTAL</td>
                                    <td>$6,500.00</td>
                                </tr>
                            </tfoot>
                        </table> -->
                    </div>
                    <div class="row">
                        <div class="notices">
                            <div>UNTUK PEMBAYARAN:</div>
                            <div class="notice"><span name="inv-info"></span></div>
                        </div>
                    </div>
                </main>
                <footer>
                    <div class="notices">
                        <div class="notice">PEMBAYARAN DAPAT DITRANSFER KE <span name="bank-dest"></span></div>
                    </div>
                </footer>
            </div>
            <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
            <div></div>
        </div>
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
                    $('#img-logo').attr('src', newSrc);
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
                    $('[name="inv-date"]').text(invdate);
                    $('[name="inv-due-date"]').text(duedate);
                    $('[name="inv-code"]').text(data.INV_CODE);
                    $('[name="inv_custname"]').text(data.CUST_NAME);
                    $('[name="client-addr"]').text(data.CUST_ADDRESS);
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