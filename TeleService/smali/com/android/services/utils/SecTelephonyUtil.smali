.class public Lcom/android/services/utils/SecTelephonyUtil;
.super Ljava/lang/Object;
.source "SecTelephonyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/utils/SecTelephonyUtil$1;,
        Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-services-utils-SecTelephonyUtil$CallStatusCodeSwitchesValues:[I

.field private static BOOSTING_TIMEOUT:I

.field private static BOOSTING_TIMEOUT_FOR_TABLET:I

.field public static mhFDNQueryHanlder:Landroid/os/Handler;

.field private static sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private static sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method private static synthetic -getcom-android-services-utils-SecTelephonyUtil$CallStatusCodeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->-com-android-services-utils-SecTelephonyUtil$CallStatusCodeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->-com-android-services-utils-SecTelephonyUtil$CallStatusCodeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->values()[Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->AUTO_REJECTED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_22

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CALL_FAILED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_21

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CALL_FAILED_LOWBATT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_20

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CDMA_CALL_LOST:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1f

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1e

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->DCM_VT_CALL_ERROR:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1d

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->DCM_VT_EMR_CALL_ERROR:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1c

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->DIALED_MMI:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1b

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_CALL_FROM_AIRPLANE_MODE_DIALOG:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1a

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_19

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_18

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EXITED_ECM:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_17

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_16

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_15

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_14

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_13

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_12

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_10

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_f

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_SERVICE_IMPOSSIBLE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_e

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_d

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_c

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_b

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_a

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_9

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_8

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->OUT_OF_3G_NETWORK:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_7

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_6

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->POWER_OFF:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_5

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_4

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FDN_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_3

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_2

    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_1

    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_0

    :goto_22
    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil;->-com-android-services-utils-SecTelephonyUtil$CallStatusCodeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_22

    :catch_1
    move-exception v1

    goto :goto_21

    :catch_2
    move-exception v1

    goto :goto_20

    :catch_3
    move-exception v1

    goto :goto_1f

    :catch_4
    move-exception v1

    goto :goto_1e

    :catch_5
    move-exception v1

    goto :goto_1d

    :catch_6
    move-exception v1

    goto :goto_1c

    :catch_7
    move-exception v1

    goto :goto_1b

    :catch_8
    move-exception v1

    goto :goto_1a

    :catch_9
    move-exception v1

    goto :goto_19

    :catch_a
    move-exception v1

    goto :goto_18

    :catch_b
    move-exception v1

    goto/16 :goto_17

    :catch_c
    move-exception v1

    goto/16 :goto_16

    :catch_d
    move-exception v1

    goto/16 :goto_15

    :catch_e
    move-exception v1

    goto/16 :goto_14

    :catch_f
    move-exception v1

    goto/16 :goto_13

    :catch_10
    move-exception v1

    goto/16 :goto_12

    :catch_11
    move-exception v1

    goto/16 :goto_11

    :catch_12
    move-exception v1

    goto/16 :goto_10

    :catch_13
    move-exception v1

    goto/16 :goto_f

    :catch_14
    move-exception v1

    goto/16 :goto_e

    :catch_15
    move-exception v1

    goto/16 :goto_d

    :catch_16
    move-exception v1

    goto/16 :goto_c

    :catch_17
    move-exception v1

    goto/16 :goto_b

    :catch_18
    move-exception v1

    goto/16 :goto_a

    :catch_19
    move-exception v1

    goto/16 :goto_9

    :catch_1a
    move-exception v1

    goto/16 :goto_8

    :catch_1b
    move-exception v1

    goto/16 :goto_7

    :catch_1c
    move-exception v1

    goto/16 :goto_6

    :catch_1d
    move-exception v1

    goto/16 :goto_5

    :catch_1e
    move-exception v1

    goto/16 :goto_4

    :catch_1f
    move-exception v1

    goto/16 :goto_3

    :catch_20
    move-exception v1

    goto/16 :goto_2

    :catch_21
    move-exception v1

    goto/16 :goto_1

    :catch_22
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v0, 0x7d0

    sput v0, Lcom/android/services/utils/SecTelephonyUtil;->BOOSTING_TIMEOUT:I

    const/16 v0, 0xfa0

    sput v0, Lcom/android/services/utils/SecTelephonyUtil;->BOOSTING_TIMEOUT_FOR_TABLET:I

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/services/utils/SecTelephonyUtil$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mhFDNQueryHanlder:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boostCPU()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v5, :cond_0

    const/16 v5, 0xe

    invoke-static {v1, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v5

    sput-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v5}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    aget v6, v2, v8

    invoke-virtual {v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_0
    sget v0, Lcom/android/services/utils/SecTelephonyUtil;->BOOSTING_TIMEOUT:I

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v0, Lcom/android/services/utils/SecTelephonyUtil;->BOOSTING_TIMEOUT_FOR_TABLET:I

    :cond_1
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v5, :cond_2

    :try_start_0
    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v6, "CoreNumLockHelper.acquire()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v5, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v5, :cond_3

    const/16 v5, 0xc

    invoke-static {v1, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v5

    sput-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v5}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v6, v4, v8

    invoke-virtual {v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_3
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v5, :cond_4

    :try_start_1
    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v6, "CpuBooster.acquire()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->sCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v5, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v6, "CoreNumLockHelper.acquire() is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "SecTelephonyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "boostCPU: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v6, "CpuBooster.acquire() is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "SecTelephonyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "boostCPU: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createFailedConnectionForOther(I)Landroid/telecom/Connection;
    .locals 8

    const-string/jumbo v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    const/4 v5, -0x1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/16 v0, 0x25

    if-ne p0, v0, :cond_1

    invoke-static {p0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    const-string/jumbo v0, "SecTelephonyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createFailedConnectionForOther DisconnectCauseReason : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    const-string/jumbo v4, "ILLEGAL_MS"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_3

    const-string/jumbo v4, "ILLEGAL_ME"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_4

    const-string/jumbo v4, "NETWORK_REG_FAIL"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_5

    const-string/jumbo v4, "LOCATION_REG_FAIL"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_6

    const-string/jumbo v4, "LOCATION_REGSTERING"

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_7

    const-string/jumbo v4, "IMSI_UNKNOWN"

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_8

    const-string/jumbo v4, "FREQ_SEARCHING"

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_9

    const-string/jumbo v4, "GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_a

    const-string/jumbo v4, "GPRS_SERVICE_NOT_ALLOWED"

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_b

    const-string/jumbo v4, "GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN"

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_c

    const-string/jumbo v4, "NOT_REGISTERED_NUMBER"

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_d

    const-string/jumbo v4, "ETC_CAUSE_REJECT"

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_e

    const-string/jumbo v4, "RESTRICT_CALL_FACTORY_MODE"

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_f

    const-string/jumbo v4, "IMS_NOT_REGISTERED"

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const-string/jumbo v4, "RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA"

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown service state "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x2b

    invoke-static {v6, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static createFailedConnectionForPhoneIsNull()Landroid/telecom/Connection;
    .locals 6

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isSimStateAbsent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SecTelephonyUtil"

    const-string/jumbo v1, "SIM_STATE_ABSENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/telecom/DisconnectCause;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/16 v1, 0x25

    invoke-static {v1}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "Phone is null"

    const/16 v1, 0x2b

    invoke-static {v1, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    return-object v0
.end method

.method private static doCheckRtsState(ILandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 14

    const/4 v7, 0x1

    const/4 v13, 0x3

    const/4 v8, 0x0

    const/4 v12, 0x0

    if-ne p0, v13, :cond_0

    return-object v12

    :cond_0
    if-nez p0, :cond_2

    move v3, v7

    :goto_0
    invoke-static {v3, p1}, Lcom/android/services/utils/SecTelephonyUtil;->getKorCallStateCode(ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v4

    const-string/jumbo v9, "SecTelephonyUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "RTSLOG : doCheckRtsState() korState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v6

    const-string/jumbo v9, "feature_skt"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "feature_ktt"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_1
    if-eqz v4, :cond_3

    sget-object v9, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    if-eq v4, v9, :cond_3

    const-string/jumbo v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "doCheckRtsState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    move v3, v8

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/TeleServiceSystemDB;->isAirplainModeOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v9

    if-ne v9, v13, :cond_6

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "hd_voice_roaming_enabled"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_4

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bHdVoiceRoamingEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v7

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "handle_not_registered"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    if-nez v4, :cond_8

    return-object v12

    :cond_7
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v7

    :cond_8
    const-string/jumbo v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RTSLOG : doCheckRtsState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isDefaultIMEI()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isTestSimCard()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v7

    :cond_a
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v7

    if-ne v7, v13, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    const-string/jumbo v7, "feature_kor_open"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v7

    :cond_b
    const-string/jumbo v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    if-eq v4, v7, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v7

    :cond_c
    if-eqz v4, :cond_d

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    if-eq v4, v7, :cond_d

    return-object v4

    :cond_d
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v7
.end method

.method private static getKTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v9, 0x2

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/android/services/utils/SecTelephonyUtil;->isCSCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v1

    const-string/jumbo v4, "SecTelephonyUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getKTCallStatusCode - isSvc : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / isCSCall : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-nez p1, :cond_b

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isSimStateAbsent()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SecTelephonyUtil"

    const-string/jumbo v5, "SIM_STATE_ABSENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    const-string/jumbo v4, "SecTelephonyUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getKTCallStatusCode, isLimitedService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    aget-object v4, p0, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_2

    aget-object v4, p0, v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, p0, v10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_2

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isLTEDomain()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const/4 v0, 0x0

    :goto_0
    aget-object v4, p0, v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x10

    if-eq v4, v7, :cond_3

    aget-object v4, p0, v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x11

    if-ne v4, v7, :cond_6

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isLTEDomain()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    move v4, v5

    :goto_2
    or-int/2addr v0, v4

    if-eqz v0, :cond_8

    const-string/jumbo v4, "SecTelephonyUtil"

    const-string/jumbo v5, "FOLLOW_ON_REQ"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    aget-object v4, p0, v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x16

    if-ne v4, v7, :cond_4

    goto :goto_1

    :cond_7
    move v4, v6

    goto :goto_2

    :cond_8
    if-nez v1, :cond_a

    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_9

    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_f

    :cond_9
    :goto_3
    aget-object v4, p0, v10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_a
    aget-object v4, p0, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_b
    invoke-static {p0}, Lcom/android/services/utils/SecTelephonyUtil;->isRtsStatus([Ljava/lang/Integer;)Z

    move-result v3

    const-string/jumbo v4, "SecTelephonyUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getKTCallStatusCode - isRtsStatus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_c

    if-eqz v3, :cond_13

    :cond_c
    if-eqz v1, :cond_14

    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x5

    if-eq v4, v7, :cond_d

    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_10

    :cond_d
    const/4 v0, 0x1

    :goto_4
    aget-object v4, p0, v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x10

    if-eq v4, v7, :cond_e

    aget-object v4, p0, v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x11

    if-ne v4, v7, :cond_11

    :cond_e
    :goto_5
    and-int/2addr v0, v6

    if-eqz v0, :cond_12

    const-string/jumbo v4, "SecTelephonyUtil"

    const-string/jumbo v5, "FOLLOW_ON_REQ"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :cond_f
    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v10, :cond_9

    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0xc

    if-eq v4, v7, :cond_9

    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0xd

    if-ne v4, v7, :cond_a

    goto/16 :goto_3

    :sswitch_0
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_1
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_2
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_3
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_4
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_5
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_6
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_7
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_8
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_9
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_a
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_b
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_c
    aget-object v4, p0, v6

    aput-object v4, p0, v11

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_d
    aget-object v4, p0, v6

    aput-object v4, p0, v11

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_e
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    :cond_11
    aget-object v4, p0, v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x16

    if-eq v4, v7, :cond_e

    move v6, v5

    goto :goto_5

    :cond_12
    aget-object v4, p0, v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :cond_13
    :goto_6
    const/4 v4, 0x0

    return-object v4

    :sswitch_f
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_10
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_11
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_12
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_13
    if-nez p1, :cond_13

    aget-object v4, p0, v9

    aput-object v4, p0, v11

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_14
    aget-object v4, p0, v9

    aput-object v4, p0, v11

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_15
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :cond_14
    aget-object v4, p0, v10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_3

    goto :goto_6

    :sswitch_16
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_17
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_18
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_19
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_1a
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_1b
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_1c
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_1d
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x16 -> :sswitch_5
        0xfe -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_c
        0x8 -> :sswitch_b
        0xb -> :sswitch_b
        0xc -> :sswitch_b
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_b
        0x10 -> :sswitch_d
        0x11 -> :sswitch_d
        0x16 -> :sswitch_d
        0xfe -> :sswitch_d
        0xff -> :sswitch_e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_f
        0x3 -> :sswitch_10
        0x6 -> :sswitch_11
        0x7 -> :sswitch_13
        0x8 -> :sswitch_12
        0xb -> :sswitch_12
        0xc -> :sswitch_12
        0xd -> :sswitch_12
        0xe -> :sswitch_13
        0xf -> :sswitch_12
        0x10 -> :sswitch_14
        0x11 -> :sswitch_14
        0x16 -> :sswitch_14
        0xff -> :sswitch_15
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x2 -> :sswitch_16
        0x3 -> :sswitch_17
        0x6 -> :sswitch_18
        0x7 -> :sswitch_19
        0x8 -> :sswitch_1a
        0xb -> :sswitch_1a
        0xc -> :sswitch_1a
        0xd -> :sswitch_1a
        0xe -> :sswitch_19
        0xf -> :sswitch_1a
        0x10 -> :sswitch_1b
        0x11 -> :sswitch_1b
        0x16 -> :sswitch_1b
        0xfe -> :sswitch_1c
        0xff -> :sswitch_1d
    .end sparse-switch
.end method

.method private static getKorCallStateCode(ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p0, p1}, Lcom/android/services/utils/SecTelephonyUtil;->getSKTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p0, p1}, Lcom/android/services/utils/SecTelephonyUtil;->getKTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v1

    return-object v1

    :cond_2
    const-string/jumbo v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, p0, p1}, Lcom/android/services/utils/SecTelephonyUtil;->getLGTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v1

    return-object v1

    :cond_3
    const-string/jumbo v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0, p0, p1}, Lcom/android/services/utils/SecTelephonyUtil;->getOPENCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v1

    return-object v1

    :cond_4
    return-object v2
.end method

.method private static getLGTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 13

    const/4 v12, 0x4

    const/4 v6, 0x1

    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v10, 0x2

    const-string/jumbo v5, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLGTCallStatusCode - isSvc : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / rtsValues[RTS_PS] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p0, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    aget-object v5, p0, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x5

    if-eq v5, v8, :cond_0

    aget-object v5, p0, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x10

    if-eq v5, v8, :cond_1

    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x11

    if-ne v5, v8, :cond_3

    :cond_1
    :goto_1
    and-int/2addr v0, v6

    if-eqz v0, :cond_4

    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v6, "FOLLOW_ON_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x16

    if-eq v5, v8, :cond_1

    move v6, v7

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "single_lte"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isDomesticPlmn()Z

    move-result v5

    if-eqz v5, :cond_5

    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_6

    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_6

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_5
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_6
    :goto_2
    const/4 v5, 0x0

    return-object v5

    :sswitch_0
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_1
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_2
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_3
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_4
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_5
    aget-object v5, p0, v10

    aput-object v5, p0, v12

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_6
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_7
    aget-object v5, p0, v10

    aput-object v5, p0, v12

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_8
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_7
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    const-string/jumbo v5, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLGTCallStatusCode, isLimitedService = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "single_lte"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    invoke-static {p2}, Lcom/android/services/utils/SecTelephonyUtil;->isCSCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v1

    const-string/jumbo v5, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLGTCallStatusCode() - isCSCall : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isSimStateAbsent()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v6, "SIM_STATE_ABSENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_9
    if-eqz v3, :cond_8

    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v7, "LTE N/W."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    const v7, 0x7f0d07d4

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_a
    if-eqz v3, :cond_f

    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_b

    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_b

    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_b

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isLTEDomain()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_3
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x10

    if-eq v5, v8, :cond_c

    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x11

    if-ne v5, v8, :cond_e

    :cond_c
    move v5, v6

    :goto_4
    or-int/2addr v0, v5

    if-eqz v0, :cond_f

    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v6, "FOLLOW_ON_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_d
    const/4 v0, 0x1

    goto :goto_3

    :cond_e
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x16

    if-eq v5, v8, :cond_c

    move v5, v7

    goto :goto_4

    :cond_f
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_10

    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_9
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_a
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_b
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_c
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_d
    aget-object v5, p0, v10

    aput-object v5, p0, v12

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_e
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_f
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_10
    aget-object v5, p0, v10

    aput-object v5, p0, v12

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_11
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_6

    aget-object v5, p0, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v10, :cond_11

    aget-object v5, p0, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v11, :cond_12

    :cond_11
    :goto_5
    const-string/jumbo v5, "single_lte"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isDomesticPlmn()Z

    move-result v5

    if-eqz v5, :cond_13

    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_6

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_12
    aget-object v5, p0, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_11

    aget-object v5, p0, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_6

    goto :goto_5

    :cond_13
    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    goto/16 :goto_2

    :sswitch_12
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_13
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_14
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_15
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_16
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_17
    aget-object v5, p0, v11

    aput-object v5, p0, v12

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_18
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_19
    aget-object v5, p0, v11

    aput-object v5, p0, v12

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_1a
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
        0x16 -> :sswitch_7
        0xff -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_9
        0x3 -> :sswitch_a
        0x6 -> :sswitch_b
        0x7 -> :sswitch_e
        0x8 -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_d
        0xd -> :sswitch_d
        0xe -> :sswitch_f
        0xf -> :sswitch_d
        0x10 -> :sswitch_10
        0x11 -> :sswitch_10
        0x16 -> :sswitch_10
        0x5f -> :sswitch_11
        0x60 -> :sswitch_11
        0x61 -> :sswitch_11
        0x63 -> :sswitch_11
        0x6f -> :sswitch_11
        0xfe -> :sswitch_11
        0xff -> :sswitch_11
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_13
        0x6 -> :sswitch_14
        0x7 -> :sswitch_15
        0x8 -> :sswitch_16
        0xb -> :sswitch_17
        0xc -> :sswitch_17
        0xd -> :sswitch_17
        0xe -> :sswitch_18
        0xf -> :sswitch_17
        0x10 -> :sswitch_19
        0x11 -> :sswitch_19
        0x16 -> :sswitch_19
        0xff -> :sswitch_1a
    .end sparse-switch
.end method

.method public static getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v2, Lcom/android/services/utils/SecTelephonyUtil;->mhFDNQueryHanlder:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/phone/FDNContactsCache;->queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    invoke-static {v1}, Lcom/android/phone/FDNContactsCache;->getNameFromMsg(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "ltn_sdnname_display"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string/jumbo v4, "SecTelephonyUtil"

    const-string/jumbo v5, "LTN_SDNNAME_DISPLAY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x3

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    const/16 v4, 0x2de

    if-eq v1, v4, :cond_1

    const/16 v4, 0x14e

    if-eq v1, v4, :cond_1

    const/16 v4, 0x2e4

    if-eq v1, v4, :cond_1

    const/16 v4, 0x2dc

    if-eq v1, v4, :cond_1

    return-object v3

    :cond_1
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil;->mhFDNQueryHanlder:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p0, v2}, Lcom/android/phone/FDNContactsCache;->queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->getNameFromMsg(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getOPENCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 13

    const/16 v12, 0x10

    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x2

    invoke-static {p2}, Lcom/android/services/utils/SecTelephonyUtil;->isCSCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v2

    const-string/jumbo v5, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getOPENCallStatusCode - isSvc : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / isCSCall : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    if-eqz p1, :cond_6

    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x5

    if-eq v5, v8, :cond_0

    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v12, :cond_1

    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x11

    if-ne v5, v8, :cond_3

    :cond_1
    move v5, v7

    :goto_1
    and-int/2addr v1, v5

    if-eqz v1, :cond_4

    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v6, "FOLLOW_ON_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x16

    if-eq v5, v8, :cond_1

    move v5, v6

    goto :goto_1

    :cond_4
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_5
    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_e

    aget-object v5, p0, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_e

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_0
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_1
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_6
    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isSimStateAbsent()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v6, "SIM_STATE_ABSENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    const-string/jumbo v5, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getOPENCallStatusCode, isLimitedService = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    aget-object v5, p0, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_8

    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_8

    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_8

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isLTEDomain()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_8
    const/4 v1, 0x0

    :goto_2
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v12, :cond_9

    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x11

    if-ne v5, v8, :cond_c

    :cond_9
    :goto_3
    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isLTEDomain()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_a
    move v5, v6

    :goto_4
    or-int/2addr v1, v5

    if-eqz v1, :cond_5

    const-string/jumbo v5, "SecTelephonyUtil"

    const-string/jumbo v6, "FOLLOW_ON_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    :cond_c
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x16

    if-ne v5, v8, :cond_a

    goto :goto_3

    :cond_d
    move v5, v7

    goto :goto_4

    :cond_e
    aget-object v5, p0, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    invoke-static {p0}, Lcom/android/services/utils/SecTelephonyUtil;->isRtsStatus([Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isLTEDomain()Z

    move-result v5

    if-eqz v5, :cond_f

    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_5
    sparse-switch v0, :sswitch_data_2

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_2
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_3
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_f
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :sswitch_4
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_5
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :sswitch_6
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v5

    :cond_10
    const/4 v5, 0x0

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0xb -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x6 -> :sswitch_2
        0x8 -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xf -> :sswitch_3
        0xfe -> :sswitch_3
        0xff -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xe -> :sswitch_5
        0x10 -> :sswitch_6
        0x11 -> :sswitch_6
        0x16 -> :sswitch_6
    .end sparse-switch
.end method

.method private static getRtsValueForKor()[Ljava/lang/Integer;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string/jumbo v3, "ril.skt.network_regist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "Idle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v7, :cond_0

    const-string/jumbo v3, "SecTelephonyUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRtsValueForKor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/Integer;

    const-string/jumbo v3, ";"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v8

    const-string/jumbo v4, "Status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    aget-object v3, v2, v6

    const-string/jumbo v4, "Idle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    aget-object v3, v2, v9

    const-string/jumbo v4, "CS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    aget-object v3, v2, v10

    const-string/jumbo v4, "PS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    return-object v1

    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getSKTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 12

    const/16 v11, 0x10

    const/4 v10, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x2

    const-string/jumbo v6, "SecTelephonyUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSKTCallStatusCode - isSvc : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    aget-object v6, p0, v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v11, :cond_1

    aget-object v6, p0, v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x11

    if-ne v6, v7, :cond_3

    :cond_1
    :goto_1
    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    const-string/jumbo v4, "SecTelephonyUtil"

    const-string/jumbo v5, "FOLLOW_ON_REQ"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    aget-object v6, p0, v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_1

    move v4, v5

    goto :goto_1

    :cond_4
    aget-object v4, p0, v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_2
    const/4 v4, 0x0

    return-object v4

    :sswitch_0
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_1
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :cond_5
    invoke-static {p2}, Lcom/android/services/utils/SecTelephonyUtil;->isCSCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v1

    invoke-static {p0}, Lcom/android/services/utils/SecTelephonyUtil;->isRtsStatus([Ljava/lang/Integer;)Z

    move-result v3

    const-string/jumbo v6, "SecTelephonyUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSKTCallStatusCode - isCSCall : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / isRtsStatus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isSimStateAbsent()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v4, "SecTelephonyUtil"

    const-string/jumbo v5, "SIM_STATE_ABSENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    const-string/jumbo v6, "SecTelephonyUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSKTCallStatusCode, isLimitedService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a

    aget-object v6, p0, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_8

    aget-object v6, p0, v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_8

    aget-object v6, p0, v10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_8

    const/4 v0, 0x1

    :goto_3
    aget-object v6, p0, v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v11, :cond_7

    aget-object v6, p0, v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x11

    if-ne v6, v7, :cond_9

    :cond_7
    :goto_4
    or-int/2addr v0, v4

    if-eqz v0, :cond_a

    const-string/jumbo v4, "SecTelephonyUtil"

    const-string/jumbo v5, "FOLLOW_ON_REQ"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    aget-object v6, p0, v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_7

    move v4, v5

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :cond_b
    aget-object v4, p0, v10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    sget-object v4, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_1
        0xb -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasIMSCall()Z
    .locals 15

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Connection;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v12, v3, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v12, "SecTelephonyUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "hasIMSCall : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private static isCSCall(Landroid/telecom/ConnectionRequest;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v2

    if-ne v2, v4, :cond_1

    return v4

    :cond_1
    return v3
.end method

.method public static isDefaultIMEI()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "357858010034783"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "000000000000000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "004400152020002"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SecTelephonyUtil"

    const-string/jumbo v4, "International Mobile Equipment Identity is initial state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1
    const-string/jumbo v3, "SecTelephonyUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDefaultIMEI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isDomesticPlmn()Z
    .locals 2

    const-string/jumbo v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "domestic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isLGTSIM()Z
    .locals 5

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SecTelephonyUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril.simtype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "45006"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static isLTEDomain()Z
    .locals 4

    const-string/jumbo v1, "ril.reject.rat"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SecTelephonyUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RTSLOG - isLTEDomain() - ril.reject.rat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "L"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isRtsStatus([Ljava/lang/Integer;)Z
    .locals 7

    const/16 v6, 0xd

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v6, :cond_0

    aget-object v2, p0, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "feature_kor_open"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_5

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_6

    :cond_5
    :goto_1
    return v0

    :cond_6
    aget-object v2, p0, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_7

    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    return v1
.end method

.method private static isSimStateAbsent()Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTestSimCard()Z
    .locals 3

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "45001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "12"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static preCheckRtsState(ILandroid/telecom/ConnectionRequest;)I
    .locals 5

    const-string/jumbo v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return p0

    :cond_0
    move v0, p0

    invoke-static {p0, p1}, Lcom/android/services/utils/SecTelephonyUtil;->doCheckRtsState(ILandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v1

    if-nez v1, :cond_1

    return p0

    :cond_1
    const-string/jumbo v2, "SecTelephonyUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preCheckRtsState - CallStatusCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->-getcom-android-services-utils-SecTelephonyUtil$CallStatusCodeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    :goto_0
    const-string/jumbo v2, "SecTelephonyUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preCheckRtsState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x25

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static setIMSPreRegState()V
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v4, "single_lte"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    :cond_0
    if-nez v3, :cond_1

    const-string/jumbo v3, "feature_kor_open"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isLGTSIM()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    const-string/jumbo v3, "SecTelephonyUtil"

    const-string/jumbo v4, "setIMSPreRegState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v3, "SecTelephonyUtil"

    const-string/jumbo v4, "set PreRegState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ril.ims.pre_regstate"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
