<?php

/*

	This file is part of Chikitsa.



    Chikitsa is free software: you can redistribute it and/or modify

    it under the terms of the GNU General Public License as published by

    the Free Software Foundation, either version 3 of the License, or

    (at your option) any later version.



    Chikitsa is distributed in the hope that it will be useful,

    but WITHOUT ANY WARRANTY; without even the implied warranty of

    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the

    GNU General Public License for more details.



    You should have received a copy of the GNU General Public License

    along with Chikitsa.  If not, see <https://www.gnu.org/licenses/>.

*/
?>
<!-- Begin Page Content -->
<div class="container-fluid">
	<!-- Page Heading -->
	<div class="card shadow mb-4">
		<div class="card-header py-3 d-sm-flex align-items-center justify-content-between mb-4">
			<h5 class="m-0 font-weight-bold text-primary">
			<?=$this->lang->line('license_key');?>
			</h5>
		</div>
		<div class="card-body">

					<?php echo form_open('module/license_key/'.$module_name) ?>

						<div class="col-md-12">

							<div class="col-md-12">

								<label for="module_name"><?php echo $this->lang->line("module");?></label>

								<input type="input" class="form-control" name="module_name" value="<?=$module['module_display_name'];?>" readonly/>

							</div>

							<div class="col-md-12">

								<label for="license_key"><?php echo $this->lang->line("license_key");?></label>

								<input type="hidden" class="form-control" name="module_name" value="<?=$module_name;?>"/>

								<input type="input" class="form-control" name="license_key" value="<?=$license_key;?>"/>

								<?php echo form_error('license_key','<div class="alert alert-danger">','</div>'); ?>

							</div>

							<div class="col-md-12">

								<br/>

							</div>

							<div class="col-md-12">

								<div class="form-group">

									<button class="btn square-btn-adjust btn-primary btn-sm" type="submit" name="submit" /><?php echo $this->lang->line("save");?></button>

								</div>

							</div>

						</div>

					<?php echo form_close(); ?>
		</div>
	</div>
</div>