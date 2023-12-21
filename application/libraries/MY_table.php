<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class MY_table extends CI_table {
    protected function _default_template()
	{
		return array(
			'table_open'		=> '<table border="1" cellpadding="4" cellspacing="0">',

			'thead_open'		=> '<thead>',
			'thead_close'		=> '</thead>',

			'heading_row_start'	=> '<tr bgcolor=#ff9900>',
			'heading_row_end'	=> '</tr>',
			'heading_cell_start'	=> '<th style="color:black">',
			'heading_cell_end'	=> '</th>',

			'tbody_open'		=> '<tbody>',
			'tbody_close'		=> '</tbody>',

			'row_start'		=> '<tr bgcolor="#66cc00">',
			'row_end'		=> '</tr>',
			'cell_start'		=> '<td style="color:black">',
			'cell_end'		=> '</td>',

			'row_alt_start'		=> '<tr bgcolor=#ff1493>',
			'row_alt_end'		=> '</tr>',
			'cell_alt_start'	=> '<td style="color:white">',
			'cell_alt_end'		=> '</td>',

			'table_close'		=> '</table>'
		);
	}
}