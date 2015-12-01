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
static const char *ng0 = "E:/1201cs152/final/display.v";
static int ng1[] = {1000, 0};
static int ng2[] = {100, 0};
static int ng3[] = {10, 0};
static int ng4[] = {1, 0};
static int ng5[] = {0, 0};
static unsigned int ng6[] = {7U, 0U};
static unsigned int ng7[] = {11U, 0U};
static int ng8[] = {2, 0};
static unsigned int ng9[] = {13U, 0U};
static int ng10[] = {3, 0};
static unsigned int ng11[] = {14U, 0U};
static unsigned int ng12[] = {64U, 0U};
static unsigned int ng13[] = {121U, 0U};
static unsigned int ng14[] = {36U, 0U};
static unsigned int ng15[] = {48U, 0U};
static int ng16[] = {4, 0};
static unsigned int ng17[] = {25U, 0U};
static int ng18[] = {5, 0};
static unsigned int ng19[] = {18U, 0U};
static int ng20[] = {6, 0};
static unsigned int ng21[] = {2U, 0U};
static int ng22[] = {7, 0};
static unsigned int ng23[] = {120U, 0U};
static int ng24[] = {8, 0};
static unsigned int ng25[] = {0U, 0U};
static int ng26[] = {9, 0};
static unsigned int ng27[] = {24U, 0U};
static unsigned int ng28[] = {126U, 0U};
static int ng29[] = {11, 0};
static unsigned int ng30[] = {119U, 0U};
static int ng31[] = {12, 0};
static unsigned int ng32[] = {79U, 0U};
static int ng33[] = {13, 0};
static int ng34[] = {14, 0};
static unsigned int ng35[] = {118U, 0U};
static int ng36[] = {15, 0};
static unsigned int ng37[] = {78U, 0U};
static int ng38[] = {16, 0};
static int ng39[] = {17, 0};
static unsigned int ng40[] = {71U, 0U};
static int ng41[] = {18, 0};
static unsigned int ng42[] = {113U, 0U};
static int ng43[] = {19, 0};
static unsigned int ng44[] = {73U, 0U};
static int ng45[] = {20, 0};
static unsigned int ng46[] = {127U, 0U};



static void Always_41_0(char *t0)
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

LAB0:    t1 = (t0 + 6312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 6940);
    *((int *)t2) = 1;
    t3 = (t0 + 6340);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(41, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t6 = (t0 + 5696);
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
    t17 = (t0 + 5696);
    xsi_vlogvar_assign_value(t17, t4, 0, 0, 3);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5696);
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
    t32 = (t0 + 5696);
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
LAB14:    t76 = (t0 + 5788);
    xsi_vlogvar_assign_value(t76, t44, 0, 0, 1);
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

static void Always_49_1(char *t0)
{
    char t18[8];
    char t19[8];
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

LAB0:    t1 = (t0 + 6456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 6948);
    *((int *)t2) = 1;
    t3 = (t0 + 6484);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(49, ng0);

LAB5:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 3904U);
    t5 = *((char **)t4);

LAB6:    t4 = (t0 + 264);
    t6 = *((char **)t4);
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t6, 32);
    if (t7 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 344);
    t3 = *((char **)t2);
    t7 = xsi_vlog_unsigned_case_compare(t5, 2, t3, 32);
    if (t7 == 1)
        goto LAB9;

LAB10:
LAB11:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5328);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_add(t18, 32, t4, 2, t6, 32);
    t8 = (t0 + 5328);
    xsi_vlogvar_assign_value(t8, t18, 0, 0, 2);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 5328);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB23:    t6 = ((char*)((ng5)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 2, t6, 32);
    if (t7 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng4)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 32);
    if (t7 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng8)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 32);
    if (t7 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng10)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 32);
    if (t7 == 1)
        goto LAB30;

LAB31:
LAB32:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 5420);
    t3 = (t2 + 36U);
    t6 = *((char **)t3);

LAB37:    t8 = ((char*)((ng5)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t8, 32);
    if (t7 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng4)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng8)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng10)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng16)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng18)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng20)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB50;

LAB51:    t2 = ((char*)((ng22)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB52;

LAB53:    t2 = ((char*)((ng24)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB54;

LAB55:    t2 = ((char*)((ng26)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB56;

LAB57:    t2 = ((char*)((ng3)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB58;

LAB59:    t2 = ((char*)((ng29)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB60;

LAB61:    t2 = ((char*)((ng31)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB62;

LAB63:    t2 = ((char*)((ng33)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB64;

LAB65:    t2 = ((char*)((ng34)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB66;

LAB67:    t2 = ((char*)((ng36)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB68;

LAB69:    t2 = ((char*)((ng38)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB70;

LAB71:    t2 = ((char*)((ng39)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB72;

LAB73:    t2 = ((char*)((ng41)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB74;

LAB75:    t2 = ((char*)((ng43)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB76;

LAB77:    t2 = ((char*)((ng45)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 32);
    if (t7 == 1)
        goto LAB78;

LAB79:
LAB80:    goto LAB2;

LAB7:    xsi_set_current_line(51, ng0);

LAB12:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 5788);
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

LAB9:    xsi_set_current_line(62, ng0);

LAB17:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 4548U);
    t4 = *((char **)t2);
    t2 = (t4 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(71, ng0);

LAB22:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4364U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_divide(t18, 32, t3, 14, t2, 32);
    t4 = (t0 + 4960);
    xsi_vlogvar_assign_value(t4, t18, 0, 0, 5);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4364U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_mod(t18, 32, t3, 14, t2, 32);
    t4 = ((char*)((ng2)));
    memset(t19, 0, 8);
    xsi_vlog_unsigned_divide(t19, 32, t18, 32, t4, 32);
    t6 = (t0 + 5052);
    xsi_vlogvar_assign_value(t6, t19, 0, 0, 5);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 4364U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_mod(t18, 32, t3, 14, t2, 32);
    t4 = ((char*)((ng3)));
    memset(t19, 0, 8);
    xsi_vlog_unsigned_divide(t19, 32, t18, 32, t4, 32);
    t6 = (t0 + 5144);
    xsi_vlogvar_assign_value(t6, t19, 0, 0, 5);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4364U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_mod(t18, 32, t3, 14, t2, 32);
    t4 = (t0 + 5236);
    xsi_vlogvar_assign_value(t4, t18, 0, 0, 5);

LAB20:    goto LAB11;

LAB13:    xsi_set_current_line(52, ng0);

LAB16:    xsi_set_current_line(55, ng0);
    t16 = (t0 + 3996U);
    t17 = *((char **)t16);
    t16 = (t0 + 5236);
    xsi_vlogvar_assign_value(t16, t17, 0, 0, 5);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4088U);
    t3 = *((char **)t2);
    t2 = (t0 + 5144);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 5);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4180U);
    t3 = *((char **)t2);
    t2 = (t0 + 5052);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 5);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 4272U);
    t3 = *((char **)t2);
    t2 = (t0 + 4960);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 5);
    goto LAB15;

LAB18:    xsi_set_current_line(64, ng0);

LAB21:    xsi_set_current_line(65, ng0);
    t6 = (t0 + 4456U);
    t8 = *((char **)t6);
    t6 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_divide(t18, 32, t8, 14, t6, 32);
    t9 = (t0 + 4960);
    xsi_vlogvar_assign_value(t9, t18, 0, 0, 5);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4456U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_mod(t18, 32, t3, 14, t2, 32);
    t4 = ((char*)((ng2)));
    memset(t19, 0, 8);
    xsi_vlog_unsigned_divide(t19, 32, t18, 32, t4, 32);
    t6 = (t0 + 5052);
    xsi_vlogvar_assign_value(t6, t19, 0, 0, 5);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4456U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_mod(t18, 32, t3, 14, t2, 32);
    t4 = ((char*)((ng3)));
    memset(t19, 0, 8);
    xsi_vlog_unsigned_divide(t19, 32, t18, 32, t4, 32);
    t6 = (t0 + 5144);
    xsi_vlogvar_assign_value(t6, t19, 0, 0, 5);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4456U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_mod(t18, 32, t3, 14, t2, 32);
    t4 = (t0 + 5236);
    xsi_vlogvar_assign_value(t4, t18, 0, 0, 5);
    goto LAB20;

LAB24:    xsi_set_current_line(85, ng0);

LAB33:    xsi_set_current_line(86, ng0);
    t8 = ((char*)((ng6)));
    t9 = (t0 + 5512);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 4);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4960);
    t3 = (t2 + 36U);
    t6 = *((char **)t3);
    t8 = (t0 + 5420);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 5);
    goto LAB32;

LAB26:    xsi_set_current_line(89, ng0);

LAB34:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng7)));
    t6 = (t0 + 5512);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 4);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 5052);
    t3 = (t2 + 36U);
    t6 = *((char **)t3);
    t8 = (t0 + 5420);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 5);
    goto LAB32;

LAB28:    xsi_set_current_line(93, ng0);

LAB35:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng9)));
    t6 = (t0 + 5512);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 4);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 5144);
    t3 = (t2 + 36U);
    t6 = *((char **)t3);
    t8 = (t0 + 5420);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 5);
    goto LAB32;

LAB30:    xsi_set_current_line(97, ng0);

LAB36:    xsi_set_current_line(98, ng0);
    t3 = ((char*)((ng11)));
    t6 = (t0 + 5512);
    xsi_vlogvar_assign_value(t6, t3, 0, 0, 4);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 5236);
    t3 = (t2 + 36U);
    t6 = *((char **)t3);
    t8 = (t0 + 5420);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 5);
    goto LAB32;

LAB38:    xsi_set_current_line(104, ng0);
    t9 = ((char*)((ng12)));
    t10 = (t0 + 5604);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 7);
    goto LAB80;

LAB40:    xsi_set_current_line(105, ng0);
    t3 = ((char*)((ng13)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB42:    xsi_set_current_line(106, ng0);
    t3 = ((char*)((ng14)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB44:    xsi_set_current_line(107, ng0);
    t3 = ((char*)((ng15)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB46:    xsi_set_current_line(108, ng0);
    t3 = ((char*)((ng17)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB48:    xsi_set_current_line(109, ng0);
    t3 = ((char*)((ng19)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB50:    xsi_set_current_line(110, ng0);
    t3 = ((char*)((ng21)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB52:    xsi_set_current_line(111, ng0);
    t3 = ((char*)((ng23)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB54:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng25)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB56:    xsi_set_current_line(113, ng0);
    t3 = ((char*)((ng27)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB58:    xsi_set_current_line(114, ng0);
    t3 = ((char*)((ng28)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB60:    xsi_set_current_line(115, ng0);
    t3 = ((char*)((ng30)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB62:    xsi_set_current_line(116, ng0);
    t3 = ((char*)((ng32)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB64:    xsi_set_current_line(117, ng0);
    t3 = ((char*)((ng13)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB66:    xsi_set_current_line(118, ng0);
    t3 = ((char*)((ng35)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB68:    xsi_set_current_line(119, ng0);
    t3 = ((char*)((ng37)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB70:    xsi_set_current_line(120, ng0);
    t3 = ((char*)((ng23)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB72:    xsi_set_current_line(121, ng0);
    t3 = ((char*)((ng40)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB74:    xsi_set_current_line(122, ng0);
    t3 = ((char*)((ng42)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB76:    xsi_set_current_line(123, ng0);
    t3 = ((char*)((ng44)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

LAB78:    xsi_set_current_line(124, ng0);
    t3 = ((char*)((ng46)));
    t8 = (t0 + 5604);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 7);
    goto LAB80;

}

static void Cont_130_2(char *t0)
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

LAB0:    t1 = (t0 + 6600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 5604);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 7008);
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
    t18 = (t0 + 6956);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_131_3(char *t0)
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

LAB0:    t1 = (t0 + 6744U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 5512);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 7044);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 15U;
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
    xsi_driver_vfirst_trans(t5, 0, 3);
    t18 = (t0 + 6964);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000002467912418_1474961982_init()
{
	static char *pe[] = {(void *)Always_41_0,(void *)Always_49_1,(void *)Cont_130_2,(void *)Cont_131_3};
	xsi_register_didat("work_m_00000000002467912418_1474961982", "isim/main_isim_beh.exe.sim/work/m_00000000002467912418_1474961982.didat");
	xsi_register_executes(pe);
}
