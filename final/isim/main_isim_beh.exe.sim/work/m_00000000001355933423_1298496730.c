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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/1201cs152/final/random.v";
static int ng1[] = {6, 0};
static int ng2[] = {5, 0};
static int ng3[] = {1, 0};
static int ng4[] = {10, 0};



static void Always_38_0(char *t0)
{
    char t7[8];
    char t30[8];
    char t33[8];
    char t35[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t34;
    char *t36;

LAB0:    t1 = (t0 + 4932U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 5416);
    *((int *)t2) = 1;
    t3 = (t0 + 4960);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 3812U);
    t5 = *((char **)t4);
    t4 = (t0 + 424);
    t6 = *((char **)t4);
    memset(t7, 0, 8);
    t4 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t7) = 1;

LAB9:    t22 = (t7 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(42, ng0);

LAB13:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3996U);
    t3 = *((char **)t2);
    t2 = (t0 + 3972U);
    t4 = (t2 + 44U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t7, 32, t3, t5, 2, t6, 32, 1);
    t8 = (t0 + 4316);
    t21 = (t8 + 36U);
    t22 = *((char **)t21);
    t28 = (t0 + 4316);
    t29 = (t28 + 44U);
    t31 = *((char **)t29);
    t32 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t30, 32, t22, t31, 2, t32, 32, 1);
    memset(t33, 0, 8);
    xsi_vlog_unsigned_add(t33, 32, t7, 32, t30, 32);
    t34 = ((char*)((ng3)));
    memset(t35, 0, 8);
    xsi_vlog_unsigned_add(t35, 32, t33, 32, t34, 32);
    t36 = (t0 + 4408);
    xsi_vlogvar_wait_assign_value(t36, t35, 0, 0, 1, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 4316);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t30, 0, 8);
    t5 = (t30 + 4);
    t6 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 1);
    *((unsigned int *)t30) = t10;
    t11 = *((unsigned int *)t6);
    t12 = (t11 >> 1);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t13 & 63U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 63U);
    t8 = (t0 + 4408);
    t21 = (t8 + 36U);
    t22 = *((char **)t21);
    xsi_vlogtype_concat(t7, 7, 7, 2U, t22, 1, t30, 6);
    t28 = (t0 + 4316);
    xsi_vlogvar_wait_assign_value(t28, t7, 0, 0, 7, 0LL);

LAB12:    goto LAB2;

LAB8:    t21 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(41, ng0);
    t28 = (t0 + 3904U);
    t29 = *((char **)t28);
    t28 = (t0 + 4316);
    xsi_vlogvar_wait_assign_value(t28, t29, 0, 0, 7, 0LL);
    goto LAB12;

}

static void Cont_50_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 5076U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 4316);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 5476);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 127U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 6);
    t18 = (t0 + 5424);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_51_2(char *t0)
{
    char t7[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;

LAB0:    t1 = (t0 + 5220U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 4316);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 664);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_mod(t7, 32, t4, 7, t6, 32);
    t5 = ((char*)((ng4)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t7, 32, t5, 32);
    t9 = (t0 + 5512);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memset(t13, 0, 8);
    t14 = 31U;
    t15 = t14;
    t16 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t14 = (t14 & t17);
    t18 = *((unsigned int *)t16);
    t15 = (t15 & t18);
    t19 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 | t14);
    t21 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t21 | t15);
    xsi_driver_vfirst_trans(t9, 0, 4);
    t22 = (t0 + 5432);
    *((int *)t22) = 1;

LAB1:    return;
}


extern void work_m_00000000001355933423_1298496730_init()
{
	static char *pe[] = {(void *)Always_38_0,(void *)Cont_50_1,(void *)Cont_51_2};
	xsi_register_didat("work_m_00000000001355933423_1298496730", "isim/main_isim_beh.exe.sim/work/m_00000000001355933423_1298496730.didat");
	xsi_register_executes(pe);
}
