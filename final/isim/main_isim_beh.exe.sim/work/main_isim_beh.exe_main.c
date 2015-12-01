/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000821210858_0213060440_init();
    work_m_00000000002297024345_1498300866_init();
    work_m_00000000001355933423_1298496730_init();
    work_m_00000000002748130289_3398304695_init();
    work_m_00000000003332398299_3161217238_init();
    work_m_00000000002467912418_1474961982_init();
    work_m_00000000003168273374_0294802949_init();
    work_m_00000000000185610227_0286164271_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000185610227_0286164271");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
