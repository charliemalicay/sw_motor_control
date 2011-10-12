/**
 * Module:  module_dsc_qei
 *
 * The copyrights, all other intellectual and industrial 
 * property rights are retained by XMOS and/or its licensors. 
 * Terms and conditions covering the use of this code can
 * be found in the Xmos End User License Agreement.
 *
 * Copyright XMOS Ltd 2010
 *
 * In the case where this code is a modification of existing code
 * under a separate license, the separate license terms are shown
 * below. The modifications to the code are still covered by the 
 * copyright notice above.
 *
 **/                                   
#include <xs1.h>
#include "qei_commands.h"
#include "qei_client.h"

unsigned get_qei_data( streaming chanend c_qei )
{
	unsigned p;

	c_qei <: QEI_CMD_POS_REQ;
	c_qei :> p;

	p &= (QEI_COUNT_MAX-1);
	return p;
}
