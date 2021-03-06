<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-seller" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-seller" class="form-horizontal">
          <ul class="nav nav-tabs">
            <li class="active one_top"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
            <li class="tow_tap"><a href="#tab-payment" data-toggle="tab"><?php echo $tab_payment; ?></a></li>
            <?php if ($seller_id) { ?>
            <li class="three_tap"><a href="#tab-transaction" data-toggle="tab"><?php echo $tab_transaction; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-general">
              <fieldset>
                <legend><?php echo $text_seller_detail; ?></legend>
                <div class="form-group required">
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_logo; ?></label>
                  <div class="col-sm-10">
                    <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><input type="hidden" name="logo" value="<?php echo $logo; ?>" id="input-image" />
                  </div>
                </div>
                  <label class="col-sm-2 control-label" for="input-firstname"><?php echo $entry_firstname; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
                    <?php if ($error_firstname) { ?>
                    <div class="text-danger"><?php echo $error_firstname; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-lastname"><?php echo $entry_lastname; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
                    <?php if ($error_lastname) { ?>
                    <div class="text-danger"><?php echo $error_lastname; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group">
                   <label class="col-sm-2 control-label" for="input-seller-group"><?php echo $entry_seller_group; ?></label>
                      <div class="col-sm-10">
                         <select name="seller_group_id" id="input-seller-group" class="form-control">
                           <?php foreach ($seller_groups as $seller_group) { ?>
                           <?php if ($seller_group['seller_group_id'] == $seller_group_id) { ?>
                           <option value="<?php echo $seller_group['seller_group_id']; ?>" selected="selected"><?php echo $seller_group['name']; ?></option>
                           <?php } else { ?>
                           <option value="<?php echo $seller_group['seller_group_id']; ?>"><?php echo $seller_group['name']; ?></option>
                           <?php } ?>
                           <?php } ?>
                         </select>
                       </div>
                     </div>
                <div class="form-group">
                <label class="col-sm-2 control-label" for="input-sellerdescription"><?php echo $entry_description; ?></label>
                <div class="col-sm-10">
                  <textarea name="sellerdescription" rows="5" placeholder="<?php echo $entry_description; ?>" id="input-sellerdescription" class="form-control"><?php echo $sellerdescription; ?></textarea>
                  <?php if ($error_sellerdescription) { ?>
                    <div class="text-danger"><?php echo $error_sellerdescription; ?></div>
                    <?php } ?>
                </div>
              </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                    <?php if ($error_email) { ?>
                    <div class="text-danger"><?php echo $error_email; ?></div>
                    <?php  } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-telephone"><?php echo $entry_telephone; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
                    <?php if ($error_telephone) { ?>
                    <div class="text-danger"><?php echo $error_telephone; ?></div>
                    <?php  } ?>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-fax"><?php echo $entry_fax; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-fax" class="form-control" />
                  </div>
                </div>
                <!--<div class="form-group">
                  <label class="col-sm-2 control-label" for="input-code"><span data-toggle="tooltip" title="<?php echo $help_code; ?>"><?php echo $entry_code; ?></span></label>
                  <div class="col-sm-10">
                    <input type="text" name="code" value="<?php echo $code; ?>" placeholder="<?php echo $entry_code; ?>" id="input-code" class="form-control" />
                  </div>
                </div>-->
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                  <div class="col-sm-10">
                    <select name="status" id="input-status" class="form-control">
                      <?php if ($status) { ?>
                      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                      <option value="0"><?php echo $text_disabled; ?></option>
                      <?php } else { ?>
                      <option value="1"><?php echo $text_enabled; ?></option>
                      <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
		<div class="form-group">
                  <label class="col-sm-2 control-label" for="input-is_paid"><?php echo "Is Paid"; ?></label>
                  <div class="col-sm-10">
                    <select name="is_paid" id="input-is_paid" class="form-control">
                      <?php if ($is_paid) { ?>
                      <option value="1" selected="selected"><?php echo "yes"; ?></option>
                      <option value="0"><?php echo "no"; ?></option>
                      <?php } else { ?>
                      <option value="1"><?php echo "yes"; ?></option>
                      <option value="0" selected="selected"><?php echo "no"; ?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
              </fieldset>
              <fieldset>
                <legend><?php echo $text_seller_address; ?></legend>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-company"><?php echo $entry_company; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-company" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-website"><?php echo $entry_website; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="website" value="<?php echo $website; ?>" placeholder="<?php echo $entry_website; ?>" id="input-website" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-address-1"><?php echo $entry_address_1; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-address-1" class="form-control" />
                    <?php if ($error_address_1) { ?>
                    <div class="text-danger"><?php echo $error_address_1; ?></div>
                    <?php  } ?>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-address-2"><?php echo $entry_address_2; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="address_2" value="<?php echo $address_2; ?>" placeholder="<?php echo $entry_address_2; ?>" id="input-address-2" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-city"><?php echo $entry_city; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-city" class="form-control" />
                    <?php if ($error_city) { ?>
                    <div class="text-danger"><?php echo $error_city ?></div>
                    <?php  } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-postcode"><?php echo $entry_postcode; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-postcode" class="form-control" />
                    <?php if ($error_postcode) { ?>
                    <div class="text-danger"><?php echo $error_postcode ?></div>
                    <?php  } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-country"><?php echo $entry_country; ?></label>
                  <div class="col-sm-10">
                    <select name="country_id" id="input-country" class="form-control">
                      <option value=""><?php echo $text_select; ?></option>
                      <?php foreach ($countries as $country) { ?>
                      <?php if ($country['country_id'] == $country_id) { ?>
                      <option value="<?php echo $country['country_id']; ?>" selected="selected"> <?php echo $country['name']; ?> </option>
                      <?php } else { ?>
                      <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                    <?php if ($error_country) { ?>
                    <div class="text-danger"><?php echo $error_country; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-zone"><?php echo $entry_zone; ?></label>
                  <div class="col-sm-10">
                    <select name="zone_id" id="input-zone" class="form-control">
                    </select>
                    <?php if ($error_zone) { ?>
                    <div class="text-danger"><?php echo $error_zone; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </fieldset>
			  <fieldset>
                <legend><?php echo "Seller Information"; ?></legend>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-company-nature"><?php echo "Nature of the company formation"; ?></label>
                  <div class="col-sm-10">
                    <select name="company_nature" id="input-company-nature" class="form-control">
                      <option <?php if($company_nature == ''){ echo "selected"; } ?> value=""><?php echo $text_select; ?></option>
                      <option <?php if($company_nature == 'Sole Trader'){ echo "selected"; } ?> value="">Sole Trader</option>
                      <option <?php if($company_nature == 'Partnership'){ echo "selected"; } ?> value="Partnership">Partnership</option>
                      <option <?php if($company_nature == 'Company'){ echo "selected"; } ?> value="Company">Company</option>
                      <option <?php if($company_nature == 'HUF'){ echo "selected"; } ?> value="HUF">HUF</option>
                      <option <?php if($company_nature == 'Other'){ echo "selected"; } ?> value="Other">Other</option>                      
                    </select>
                    <?php if ($error_company_nature) { ?>
                    <div class="text-danger"><?php echo $error_company_nature; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group hide" id="other_company_nature">
                  <label class="col-sm-2 control-label" for="input-other-company-nature">&nbsp;</label>
                  <div class="col-sm-10">
                    <input type="text" name="other_company_nature" value="" placeholder="Other Specify" id="input-other-company-nature" class="form-control" />
                  </div>
                </div>
	        <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-business-nature"><?php echo "Nature of the business"; ?></label>
                  <div class="col-sm-10">
                    <?php $business_nature = explode(',',$business_nature); ?>
                         <?php foreach($group_lists as $key => $group_list){ ?>
            <input type="checkbox" name="business_nature[]" value="<?php echo $group_list['name']; ?>"  <?php if (in_array($group_list['name'], $business_nature)){ echo 'checked'; } ?> /> <?php echo $group_list['name']; ?>
          <?php } ?>
				  <!--<input type="checkbox" name="business_nature[]" value="Quarry Owner" class="form-control" <?php if (in_array("Quarry Owner", $business_nature)){ echo 'checked'; } ?> /> Quarry Owner
				  <input type="checkbox" name="business_nature[]" value="Factory Owner" class="form-control" <?php if (in_array("Factory Owner", $business_nature)){ echo 'checked'; } ?> /> Factory Owner
				  <input type="checkbox" name="business_nature[]" value="Exporter/Importer" class="form-control" <?php if (in_array("Exporter/Importer", $business_nature)){ echo 'checked'; } ?> /> Exporter/Importer
				  <input type="checkbox" name="business_nature[]" value="Wholesaler/Retailer/Showroom" class="form-control" <?php if (in_array("Wholesaler/Retailer/Showroom", $business_nature)){ echo 'checked'; } ?> /> Wholesaler/Retailer/Showroom
				  <input type="checkbox" name="business_nature[]" value="Traders" class="form-control" <?php if (in_array("Traders", $business_nature)){ echo 'checked'; } ?>/> Traders
				  <input type="checkbox" name="business_nature[]" value="Transporters/Logistics" class="form-control" <?php if (in_array("Transporters/Logistics", $business_nature)){ echo 'checked'; } ?> /> Transporters/Logistics
				  <input type="checkbox" name="business_nature[]" value="Machinery/Industrial Suppliers" class="form-control" <?php if (in_array("Machinery/Industrial Suppliers", $business_nature)){ echo 'checked'; } ?> /> Machinery/Industrial Suppliers -->
                    <?php if ($error_business_nature) { ?>
                    <div class="text-danger"><?php echo $error_business_nature; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-cancelled-cheque"><?php echo "Cancelled cheque on the firm name"; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="cancelled_cheque" value="<?php echo $cancelled_cheque; ?>" placeholder="<?php echo "Cancelled cheque on the firm name"; ?>" id="input-cancelled-cheque" class="form-control" />
                    <?php if ($error_cancelled_cheque) { ?>
                    <div class="text-danger"><?php echo $error_cancelled_cheque; ?></div>
                    <?php  } ?>
                  </div>
                </div>
				<div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-bank-statement"><?php echo "Latest two months Bank statement of Firm Current account"; ?></label>
                  <div class="col-sm-10">
                    <a href="" id="thumb-bank-statement" data-toggle="image" class="img-thumbnail"><img src="<?php echo $bank_statement; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><input type="hidden" name="bank_statement" value="<?php echo $bank_statement; ?>" id="input-bank-statement" />
                  </div>
                  <a href="<?php if($bank_download_url !=""){echo $bank_download_url; }else{ echo '#';} ?>" class="btn btn-success" target="_blank">Bank Statement Download</a>
                </div>
                <div class="form-group required" id="company_tin_number_div">
                  <label class="col-sm-2 control-label" for="input-tin-number"><?php echo "TIN Number"; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="tin_number" value="<?php echo $tin_number; ?>" placeholder="<?php echo "TIN Number"; ?>" id="input-tin-number" class="form-control" />
					<?php if ($error_tin_number) { ?>
                    <div class="text-danger"><?php echo $error_tin_number ?></div>
                    <?php  } ?>
                  </div>
                </div>
				<div class="form-group required" id="company_aadhar_number_div">
                  <label class="col-sm-2 control-label" for="input-aadhar-number"><?php echo "Aadhar Card Number"; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="aadhar_number" value="<?php echo $aadhar_number; ?>" placeholder="<?php echo "Aadhar Card Number"; ?>" id="input-aadhar-number" class="form-control" />
					<?php if ($error_aadhar_number) { ?>
                    <div class="text-danger"><?php echo $error_aadhar_number ?></div>
                    <?php  } ?>
                  </div>
                </div>
				<div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-aadhar-upload"><?php echo "Aadhar Card Upload"; ?></label>
                  <div class="col-sm-10">
                    <a href="" id="thumb-aadhar-upload" data-toggle="image" class="img-thumbnail"><img src="<?php echo $aadhar_upload; ?>" alt="" title="" data-placeholder="<?php echo "Aadhar Card Upload"; ?>" /></a><input type="hidden" name="aadhar_upload" value="<?php echo $aadhar_upload; ?>" id="input-aadhar-upload" />
                  </div>
                  <a href="<?php if($aadhar_download_url !=""){echo $aadhar_download_url; }else{ echo '#';} ?>" class="btn btn-success" target="_blank">Aadhar Download</a>
                </div>
				<div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-proof-upload"><?php echo "ID Proof Upload"; ?></label>
                  <div class="col-sm-10">
                    <a href="" id="thumb-proof-upload" data-toggle="image" class="img-thumbnail"><img src="<?php echo $proof_upload; ?>" alt="" title="" data-placeholder="<?php echo "ID Proof Upload"; ?>" /></a><input type="hidden" name="proof_upload" value="<?php echo $proof_upload; ?>" id="input-proof-upload" />
                  </div>
                  <a href="<?php if($proof_download_url !=""){echo $proof_download_url; }else{ echo '#';} ?>" class="btn btn-success" target="_blank">Id Proof Download</a>
                </div>
				<div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-certificate-upload"><?php echo "Company Registration Certificate Upload"; ?></label>
                  <div class="col-sm-10">
                    <a href="" id="thumb-certificate-upload" data-toggle="image" class="img-thumbnail"><img src="<?php echo $certificate_upload; ?>" alt="" title="" data-placeholder="<?php echo "Company Registration Certificate Upload"; ?>" /></a><input type="hidden" name="certificate_upload" value="<?php echo $certificate_upload; ?>" id="input-certificate-upload" />
                  </div>
                  <a href="<?php if($company_download_url!=""){echo $company_download_url;}else{ echo '#';} ?>" class="btn btn-success" target="_blank">Id Proof Download</a>
                </div>
              </fieldset>
              <div class="pull-right">
                <a class="btn btn-success" id="paymentmethod" data-toggle="tab" href="#tab-payment">Next</a>
              </div>
            </div>
            <div class="tab-pane" id="tab-payment">
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-commission"><span data-toggle="tooltip" title="<?php echo $help_commission; ?>"><?php echo $entry_commission; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="commission" value="<?php echo $commission; ?>" placeholder="<?php echo $entry_commission; ?>" id="input-commission" class="form-control" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-tax"><?php echo $entry_tax; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="tax" value="<?php echo $tax; ?>" placeholder="<?php echo $entry_tax; ?>" id="input-tax" class="form-control" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_payment; ?></label>
                <div class="col-sm-10">
                  <div class="radio">
                    <label>
                      <?php if ($payment == 'cheque') { ?>
                      <input type="radio" name="payment" value="cheque" checked="checked" />
                      <?php } else { ?>
                      <input type="radio" name="payment" value="cheque" />
                      <?php } ?>
                      <?php echo $text_cheque; ?></label>
                  </div>
                  <div class="radio">
                    <label>
                      <?php if ($payment == 'paypal') { ?>
                      <input type="radio" name="payment" value="paypal" checked="checked" />
                      <?php } else { ?>
                      <input type="radio" name="payment" value="paypal" />
                      <?php } ?>
                      <?php echo $text_paypal; ?></label>
                  </div>
                  <div class="radio">
                    <label>
                      <?php if ($payment == 'bank') { ?>
                      <input type="radio" name="payment" value="bank" checked="checked" />
                      <?php } else { ?>
                      <input type="radio" name="payment" value="bank" />
                      <?php } ?>
                      <?php echo $text_bank; ?></label>
                  </div>
                </div>
              </div>
              <div id="payment-cheque" class="payment">
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-cheque"><?php echo $entry_cheque; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="cheque" value="<?php echo $cheque; ?>" placeholder="<?php echo $entry_cheque; ?>" id="input-cheque" class="form-control" />
                    <?php if ($error_cheque) { ?>
                    <div class="text-danger"><?php echo $error_cheque; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <div id="payment-paypal" class="payment">
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-paypal"><?php echo $entry_paypal; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="paypal" value="<?php echo $paypal; ?>" placeholder="<?php echo $entry_paypal; ?>" id="input-paypal" class="form-control" />
                    <?php if ($error_paypal) { ?>
                    <div class="text-danger"><?php echo $error_paypal; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <div id="payment-bank" class="payment">
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-bank-name"><?php echo $entry_bank_name; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="bank_name" value="<?php echo $bank_name; ?>" placeholder="<?php echo $entry_bank_name; ?>" id="input-bank-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-bank-branch-number"><?php echo $entry_bank_branch_number; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" placeholder="<?php echo $entry_bank_branch_number; ?>" id="input-bank-branch-number" class="form-control" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-bank-swift-code"><?php echo $entry_bank_swift_code; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" placeholder="<?php echo $entry_bank_swift_code; ?>" id="input-bank-swift-code" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-bank-account-name"><?php echo $entry_bank_account_name; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" placeholder="<?php echo $entry_bank_account_name; ?>" id="input-bank-account-name" class="form-control" />
                    <?php if ($error_bank_account_name) { ?>
                    <div class="text-danger"><?php echo $error_bank_account_name; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-bank-account-number"><?php echo $entry_bank_account_number; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" placeholder="<?php echo $entry_bank_account_number; ?>" id="input-bank-account-number" class="form-control" />
                    <?php if ($error_bank_account_number) { ?>
                    <div class="text-danger"><?php echo $error_bank_account_number; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <?php if ($seller_id) { ?>
              <div class="pull-right">
                <a class="btn btn-success" id="transactionmethod" data-toggle="tab" href="#tab-transaction">Next</a>
              </div>
              <?php } ?>
            </div>
            <?php if ($seller_id) { ?>
            <div class="tab-pane" id="tab-transaction">
              <div id="transaction"></div>
              <br />
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-description"><?php echo $entry_description; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="description" value="" placeholder="<?php echo $entry_description; ?>" id="input-description" class="form-control" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-amount"><?php echo $entry_amount; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="amount" value="" placeholder="<?php echo $entry_amount; ?>" id="input-amount" class="form-control" />
                </div>
              </div>
              <div class="text-right">
                <button type="button" id="button-transaction" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i> <?php echo $button_transaction_add; ?></button>
              </div>
            </div>
            <?php } ?>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=localisation/country/country&token=<?php echo $token; ?>&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}

			html = '<option value=""><?php echo $text_select; ?></option>';

			if (json['zone'] && json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';
					
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}

          			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}

			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script> 
  <script type="text/javascript"><!--
$('input[name=\'payment\']').on('change', function() {
	$('.payment').hide();

	$('#payment-' + this.value).show();
});

$('input[name=\'payment\']:checked').trigger('change');
//--></script> 
  <script type="text/javascript"><!--
$('#transaction').delegate('.pagination a', 'click', function(e) {
	e.preventDefault();

	$('#transaction').load(this.href);
});

$('#transaction').load('index.php?route=seller/seller/transaction&token=<?php echo $token; ?>&seller_id=<?php echo $seller_id; ?>');

$('#button-transaction').on('click', function() {
	$.ajax({
		url: 'index.php?route=seller/seller/addtransaction&token=<?php echo $token; ?>&seller_id=<?php echo $seller_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'description=' + encodeURIComponent($('#tab-transaction input[name=\'description\']').val()) + '&amount=' + encodeURIComponent($('#tab-transaction input[name=\'amount\']').val()),
		beforeSend: function() {
			$('#button-transaction').button('loading');
		},
		complete: function() {
			$('#button-transaction').button('reset');
		},
		success: function(json) {
			$('.alert').remove();
			
			if (json['error']) {
				 $('#tab-transaction').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div></div>');
			}

			if (json['success']) {
				$('#tab-transaction').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div></div>');

				$('#transaction').load('index.php?route=seller/seller/transaction&token=<?php echo $token; ?>&seller_id=<?php echo $seller_id; ?>');
	
				$('#tab-transaction input[name=\'amount\']').val('');
				$('#tab-transaction input[name=\'description\']').val('');			
			}
		}
	});
});
//--></script>

<script>
    
	$(document).ready(function()
    {
        $("#paymentmethod").click(function()
        {

             $(".one_top").removeClass("active");
            $(".tow_tap").addClass("active")
        })
        $("#transactionmethod").click(function()
        {

            $(".tow_tap").removeClass("active");
            $(".three_tap").addClass("active")
        })

    })
 
</script>
</div>
<?php echo $footer; ?>
