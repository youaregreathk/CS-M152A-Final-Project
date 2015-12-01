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
static const char *ng0 = "E:/1201cs152/final/arrow.v";



static void Always_35_0(char *t0)
{
    char t4[8];
    char t5[8];
    char t35[8];
    char t44[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    int t68;
    int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;

LAB0:    t1 = (t0 + 5576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 6492);
    *((int *)t2) = 1;
    t3 = (t0 + 5604);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t6 = (t0 + 4960);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    memset(t5, 0, 8);
    t9 = (t5 + 4);
    t10 = (t8 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 1);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 1);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 3U);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 & 3U);
    t17 = (t0 + 3812U);
    t18 = *((char **)t17);
    xsi_vlogtype_concat(t4, 3, 3, 2U, t18, 1, t5, 2);
    t17 = (t0 + 4960);
    xsi_vlogvar_wait_assign_value(t17, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4960);
    t3 = (t2 + 36U);
    t6 = *((char **)t3);
    memset(t5, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t11 = *((unsigned int *)t6);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t5) = t13;
    t14 = *((unsigned int *)t8);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t7) = t16;
    memset(t4, 0, 8);
    t9 = (t5 + 4);
    t19 = *((unsigned int *)t9);
    t20 = (~(t19));
    t21 = *((unsigned int *)t5);
    t22 = (t21 & t20);
    t23 = (t22 & 1U);
    if (t23 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t9) == 0)
        goto LAB6;

LAB8:    t10 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t10) = 1;

LAB9:    t17 = (t4 + 4);
    t18 = (t5 + 4);
    t24 = *((unsigned int *)t5);
    t25 = (~(t24));
    *((unsigned int *)t4) = t25;
    *((unsigned int *)t17) = 0;
    if (*((unsigned int *)t18) != 0)
        goto LAB11;

LAB10:    t30 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t30 & 1U);
    t31 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t31 & 1U);
    t32 = (t0 + 4960);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    memset(t35, 0, 8);
    t36 = (t35 + 4);
    t37 = (t34 + 4);
    t38 = *((unsigned int *)t34);
    t39 = (t38 >> 1);
    t40 = (t39 & 1);
    *((unsigned int *)t35) = t40;
    t41 = *((unsigned int *)t37);
    t42 = (t41 >> 1);
    t43 = (t42 & 1);
    *((unsigned int *)t36) = t43;
    t45 = *((unsigned int *)t4);
    t46 = *((unsigned int *)t35);
    t47 = (t45 & t46);
    *((unsigned int *)t44) = t47;
    t48 = (t4 + 4);
    t49 = (t35 + 4);
    t50 = (t44 + 4);
    t51 = *((unsigned int *)t48);
    t52 = *((unsigned int *)t49);
    t53 = (t51 | t52);
    *((unsigned int *)t50) = t53;
    t54 = *((unsigned int *)t50);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB12;

LAB13:
LAB14:    t76 = (t0 + 5052);
    xsi_vlogvar_wait_assign_value(t76, t44, 0, 0, 1, 0LL);
    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t26 = *((unsigned int *)t4);
    t27 = *((unsigned int *)t18);
    *((unsigned int *)t4) = (t26 | t27);
    t28 = *((unsigned int *)t17);
    t29 = *((unsigned int *)t18);
    *((unsigned int *)t17) = (t28 | t29);
    goto LAB10;

LAB12:    t56 = *((unsigned int *)t44);
    t57 = *((unsigned int *)t50);
    *((unsigned int *)t44) = (t56 | t57);
    t58 = (t4 + 4);
    t59 = (t35 + 4);
    t60 = *((unsigned int *)t4);
    t61 = (~(t60));
    t62 = *((unsigned int *)t58);
    t63 = (~(t62));
    t64 = *((unsigned int *)t35);
    t65 = (~(t64));
    t66 = *((unsigned int *)t59);
    t67 = (~(t66));
    t68 = (t61 & t63);
    t69 = (t65 & t67);
    t70 = (~(t68));
    t71 = (~(t69));
    t72 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t72 & t70);
    t73 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t73 & t71);
    t74 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t74 & t70);
    t75 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t75 & t71);
    goto LAB14;

}

static void Always_46_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 5720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 6500);
    *((int *)t2) = 1;
    t3 = (t0 + 5748);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 3996U);
    t5 = *((char **)t4);

LAB6:    t4 = (t0 + 264);
    t6 = *((char **)t4);
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t6, 32);
    if (t7 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 424);
    t3 = *((char **)t2);
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t3, 32);
    if (t7 == 1)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(48, ng0);

LAB12:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 5052);
    t8 = (t4 + 36U);
    t9 = *((char **)t8);
    t10 = (t9 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t9);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB13;

LAB14:
LAB15:    goto LAB11;

LAB9:    xsi_set_current_line(56, ng0);

LAB17:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1624);
    t4 = *((char **)t2);
    t2 = (t0 + 4868);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 5);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1624);
    t3 = *((char **)t2);
    t2 = (t0 + 4776);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 5);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1624);
    t3 = *((char **)t2);
    t2 = (t0 + 4684);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 5);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1624);
    t3 = *((char **)t2);
    t2 = (t0 + 4592);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 5);
    goto LAB11;

LAB13:    xsi_set_current_line(49, ng0);

LAB16:    xsi_set_current_line(50, ng0);
    t16 = (t0 + 4776);
    t17 = (t16 + 36U);
    t18 = *((char **)t17);
    t19 = (t0 + 4868);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 5);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 4684);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 4776);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 5);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 4592);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 4684);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 5);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3904U);
    t3 = *((char **)t2);
    t2 = (t0 + 4592);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 5);
    goto LAB15;

}

static void Cont_65_2(char *t0)
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

LAB0:    t1 = (t0 + 5864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 4592);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 6576);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
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
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 6508);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_66_3(char *t0)
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

LAB0:    t1 = (t0 + 6008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4684);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 6612);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
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
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 6516);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_67_4(char *t0)
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

LAB0:    t1 = (t0 + 6152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4776);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 6648);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
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
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 6524);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_68_5(char *t0)
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

LAB0:    t1 = (t0 + 6296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4868);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 6684);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
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
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 6532);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003332398299_3161217238_init()
{
	static char *pe[] = {(void *)Always_35_0,(void *)Always_46_1,(void *)Cont_65_2,(void *)Cont_66_3,(void *)Cont_67_4,(void *)Cont_68_5};
	xsi_register_didat("work_m_00000000003332398299_3161217238", "isim/main_isim_beh.exe.sim/work/m_00000000003332398299_3161217238.didat");
	xsi_register_executes(pe);
}
