<?php echo form_open('recalendar/get_data'); ?>
Email here please : <input type="text" name="email" /><br/><br/>
<input type="submit" name="submit" value="submit" />
<?php echo $this->session->flashdata('message'); ?>
<?php echo form_close(); ?>