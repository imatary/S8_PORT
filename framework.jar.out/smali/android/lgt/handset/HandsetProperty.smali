.class public Landroid/lgt/handset/HandsetProperty;
.super Ljava/lang/Object;
.source "HandsetProperty.java"


# static fields
.field public static final AUTH:Ljava/lang/String; = "AUTH"

.field public static final BASEID:Ljava/lang/String; = "BASEID"

.field public static final BASELAT:Ljava/lang/String; = "BASELAT"

.field public static final BASELONG:Ljava/lang/String; = "BASELONG"

.field public static final BESTPN:Ljava/lang/String; = "BESTPN"

.field public static final BILL_GW_IP:Ljava/lang/String; = "BILL_GW_IP"

.field public static final CURRENTCH:Ljava/lang/String; = "CURRENTCH"

.field public static final DEFAULT_BROWSER:Ljava/lang/String; = "DEFAULT_BROWSER"

.field public static final DEVICE_GROUP:Ljava/lang/String; = "DEVICE_GROUP"

.field public static final DNS1:Ljava/lang/String; = "DNS1"

.field public static final DNS2:Ljava/lang/String; = "DNS2"

.field public static final ESN:Ljava/lang/String; = "ESN"

.field public static final EXCEPTION_VALUE:Ljava/lang/String; = "exception!!"

.field public static final IPV4_DEFAULT:Ljava/lang/String; = "0.0.0.0"

.field public static final IPV6_DEFAULT:Ljava/lang/String; = "0:0:0:0:0:0:0:0"

.field public static final IPV6_DEFAULT2:Ljava/lang/String; = "::"

.field public static final LGT_DATA_NETWORK_3G_STATE:Ljava/lang/String; = "LGT_DATA_NETWORK_3G_STATE"

.field public static final LGT_OZ_STARTPAGE:Ljava/lang/String; = "LGT_OZ_STARTPAGE"

.field public static final LTE_CELL_ID:Ljava/lang/String; = "LTE_CELL_ID"

.field public static final LTE_TAC:Ljava/lang/String; = "LTE_TAC"

.field public static final NETWORK_TIME:Ljava/lang/String; = "NETWORK_TIME"

.field public static final NETWORK_TYPE:Ljava/lang/String; = "NETWORK_TYPE"

.field public static final NET_LTE_PCSCF1:Ljava/lang/String; = "NET_LTE_PCSCF1"

.field public static final NET_LTE_PCSCF2:Ljava/lang/String; = "NET_LTE_PCSCF2"

.field public static final NID:Ljava/lang/String; = "NID"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "PHONE_NUMBER"

.field public static final PREFERRED_DATA_NETWORK_MODE:Ljava/lang/String; = "PREFERRED_DATA_NETWORK_MODE"

.field public static final PROCESSOR_INFO:Ljava/lang/String; = "PROCESSOR_INFO"

.field public static final REG:Ljava/lang/String; = "REG"

.field public static final ROAMING_AREA:Ljava/lang/String; = "ROAMING_AREA"

.field public static final SID:Ljava/lang/String; = "SID"

.field public static final UNKNOWN_VALUE:Ljava/lang/String; = ""

.field public static final WIPINET_VAL:Ljava/lang/String; = "WIPINET_VAL"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LGUP_getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v3, "NID"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "SID"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "BASEID"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "BASELAT"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "BASELONG"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "BESTPN"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "PROCESSOR_INFO"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "NULL"

    return-object v3

    :cond_1
    const-string/jumbo v3, "REG"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "AUTH"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    const-string/jumbo v3, "0"

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getWIPINET_VAL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "1"

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "0"

    return-object v3

    :cond_5
    const-string/jumbo v3, "NID"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getNID()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_6
    const-string/jumbo v3, "SID"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getSID()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_7
    const-string/jumbo v3, "BASEID"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBASEID()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_8
    const-string/jumbo v3, "BASELAT"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBASELAT()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_9
    const-string/jumbo v3, "BASELONG"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBASELONG()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_a
    const-string/jumbo v3, "DNS1"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDNS1()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_b
    const-string/jumbo v3, "DNS2"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDNS2()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_c
    const-string/jumbo v3, "ROAMING_AREA"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getROAMING_AREA()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_d
    const-string/jumbo v3, "BILL_GW_IP"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBILL_GW_IP()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_e
    const-string/jumbo v3, "DEVICE_GROUP"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDEVICE_GROUP()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_f
    const-string/jumbo v3, "PROCESSOR_INFO"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getPROCESSOR_INFO()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_10
    const-string/jumbo v3, "AUTH"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "REG"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "PHONE_NUMBER"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "ESN"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    invoke-static {p0}, Landroid/lgt/handset/HandsetProperty;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_12
    const-string/jumbo v3, "NETWORK_TYPE"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getNETWORK_TYPE()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_13
    const-string/jumbo v3, "CURRENTCH"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->networkTypeToCurrentCh()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_14
    const-string/jumbo v3, "NETWORK_TIME"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getNetworkTime()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_15
    const-string/jumbo v3, "PREFERRED_DATA_NETWORK_MODE"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getPREFERRED_DATA_NETWORK_MODE()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_16
    const-string/jumbo v3, "LGT_DATA_NETWORK_3G_STATE"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getLGT_DATA_NETWORK_3G_STATE()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_17
    const-string/jumbo v3, "LGT_OZ_STARTPAGE"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getLGT_OZ_STARTPAGE()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_18
    const-string/jumbo v3, "WIPINET_VAL"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getWIPINET_VAL()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_19
    const-string/jumbo v3, "BESTPN"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBESTPN()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1a
    const-string/jumbo v3, "LTE_CELL_ID"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getLTE_CELL_ID()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1b
    const-string/jumbo v3, "LTE_TAC"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getLTE_TAC()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1c
    const-string/jumbo v3, "DEFAULT_BROWSER"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDEFAULT_BROWSER()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1d
    const-string/jumbo v3, "NET_LTE_PCSCF1"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getNET_LTE_PCSCF1()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1e
    const-string/jumbo v3, "NET_LTE_PCSCF2"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getNET_LTE_PCSCF2()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method private static getBASEID()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.cdma.baseid"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBASELAT()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.cdma.baselat"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBASELONG()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.cdma.baselong"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBESTPN()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const-string/jumbo v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "HandsetProperty"

    const-string/jumbo v6, "getBESTPN()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v4, ""

    :try_start_0
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getWipiSysInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_1
    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_1
    const-string/jumbo v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "HandsetProperty"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBESTPN() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    aget-object v5, v2, v8

    return-object v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "HandsetProperty"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBESTPN()-Exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v5, "0"

    return-object v5

    :catch_1
    move-exception v0

    const-string/jumbo v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "HandsetProperty"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBESTPN is not valid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v5, "0"

    return-object v5
.end method

.method private static getBILL_GW_IP()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wipigw.ez-i.co.kr:20000"

    return-object v0
.end method

.method private static getDEFAULT_BROWSER()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "lgt.default.browser"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDEVICE_GROUP()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "3503"

    return-object v0
.end method

.method private static getDNS1()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "net.dns1"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDNS2()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "net.dns2"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "HandsetProperty"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getHandsetInfo() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "1"

    goto :goto_0
.end method

.method private static getLGT_DATA_NETWORK_3G_STATE()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLgt3GDataStatus(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getLGT_OZ_STARTPAGE()Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, ""

    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getLgtOzStartPage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "http://wap20.ez-i.co.kr"

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string/jumbo v2, "http://wap20.ez-i.co.kr"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getLTE_CELL_ID()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "HandsetProperty"

    const-string/jumbo v7, "getLTE_CELL_ID()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v5, ""

    :try_start_0
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getLteCellInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_1
    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "HandsetProperty"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLTE_CELL_ID() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    const-string/jumbo v6, "%32s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    const-string/jumbo v8, "0"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v2

    const-string/jumbo v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "HandsetProperty"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLTE_CELL_ID()-Exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v6, "-1"

    return-object v6

    :catch_1
    move-exception v1

    const-string/jumbo v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "HandsetProperty"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLTE_CELL_ID is not valid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v6, "-1"

    return-object v6
.end method

.method private static getLTE_TAC()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "HandsetProperty"

    const-string/jumbo v7, "getLTE_TAC()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v4, ""

    :try_start_0
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getLteCellInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_1
    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "HandsetProperty"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLTE_TAC() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    const-string/jumbo v6, "%32s"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    const-string/jumbo v8, "0"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v1

    const-string/jumbo v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "HandsetProperty"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLTE_TAC()-Exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v6, "-1"

    return-object v6

    :catch_1
    move-exception v0

    const-string/jumbo v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "HandsetProperty"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLTE_TAC is not valid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v6, "-1"

    return-object v6
.end method

.method private static getNETWORK_TYPE()Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "gsm.network.type"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "[:]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2
.end method

.method private static getNET_LTE_PCSCF1()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.pcscfv6.gsm0.0"

    const-string/jumbo v1, "0:0:0:0:0:0:0:0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0:0:0:0:0:0:0:0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ril.pcscfv6.gsm0.0"

    const-string/jumbo v1, "::"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ril.pcscfv4.gsm0.0"

    const-string/jumbo v1, "0.0.0.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ril.pcscfv4.gsm0.0"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "ril.pcscfv6.gsm0.0"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static getNET_LTE_PCSCF2()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.pcscfv6.gsm0.1"

    const-string/jumbo v1, "0:0:0:0:0:0:0:0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0:0:0:0:0:0:0:0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ril.pcscfv6.gsm0.1"

    const-string/jumbo v1, "::"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ril.pcscfv4.gsm0.1"

    const-string/jumbo v1, "0.0.0.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ril.pcscfv4.gsm0.1"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "ril.pcscfv6.gsm0.1"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static getNID()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.cdma.nid"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkTime()Ljava/lang/String;
    .locals 26

    const-string/jumbo v22, "ril.modem.board"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "SHANNON"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string/jumbo v22, "ril.modem.board"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "SS"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    const-string/jumbo v22, "gsm.nitz.time"

    const-string/jumbo v23, "NONE"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-string/jumbo v22, "gsm.nitz.time-elapsedtime"

    const-string/jumbo v23, "NONE"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v4, v22, v20

    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    add-long v22, v14, v4

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v10}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    return-object v11

    :cond_1
    const-string/jumbo v12, ""

    :try_start_0
    const-string/jumbo v22, "phone"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->getTimeInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :cond_2
    const/16 v17, 0x0

    const/4 v13, 0x0

    :try_start_1
    const-string/jumbo v22, "[/:,+-]"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/16 v22, 0x0

    aget-object v22, v13, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v19, v0

    const/16 v22, 0x1

    aget-object v22, v13, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v22, 0x2

    aget-object v22, v13, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v22, 0x3

    aget-object v22, v13, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v22, 0x4

    aget-object v22, v13, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v22, 0x5

    aget-object v22, v13, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v22, "%04d%02d%02dT%02d%02d%02d"

    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x3

    aput-object v24, v23, v25

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x4

    aput-object v24, v23, v25

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x5

    aput-object v24, v23, v25

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    :cond_3
    :goto_0
    const-string/jumbo v22, "eng"

    sget-object v23, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string/jumbo v22, "HandsetProperty"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getNetworkTime() - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v17

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v22, "eng"

    sget-object v23, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const-string/jumbo v22, "HandsetProperty"

    const-string/jumbo v23, "getNetworkTime()-RemoteException :"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v22, 0x0

    return-object v22

    :catch_1
    move-exception v3

    const-string/jumbo v22, "eng"

    sget-object v23, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string/jumbo v22, "HandsetProperty"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Time is not valid:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getPREFERRED_DATA_NETWORK_MODE()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLgt3GDataStatus(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getPROCESSOR_INFO()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "CORTEX A8/1.5GHz"

    return-object v0
.end method

.method private static getROAMING_AREA()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    const-string/jumbo v5, "gsm.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "HandsetProperty"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getROAMING_AREA() - svc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", plmn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v2, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_3

    :cond_2
    const-string/jumbo v5, "-1"

    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "45006"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "0"

    return-object v5

    :cond_4
    const-string/jumbo v5, "440"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "441"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const-string/jumbo v5, "4"

    return-object v5

    :cond_6
    const-string/jumbo v5, "454"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "455"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "460"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "461"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-string/jumbo v5, "5"

    return-object v5

    :cond_8
    const-string/jumbo v5, "310"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "311"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "312"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "313"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "314"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "315"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "316"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    const-string/jumbo v5, "3"

    return-object v5

    :cond_a
    const-string/jumbo v5, "2"

    return-object v5
.end method

.method private static getSID()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.cdma.sid"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWIPINET_VAL()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "HandsetProperty"

    const-string/jumbo v6, "getWIPINET_VAL()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v5, "-1"

    const-string/jumbo v6, "WIPINET_VAL"

    invoke-static {v6}, Landroid/lgt/handset/HandsetProperty;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "HandsetProperty"

    const-string/jumbo v6, "getWIPINET_VAL() -before Reg!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v5, "-1"

    return-object v5

    :cond_2
    const-string/jumbo v4, ""

    :try_start_0
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getWipiSysInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_3
    :try_start_1
    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "HandsetProperty"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getWIPINET_VAL() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    const-string/jumbo v5, "-1"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "HandsetProperty"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getWIPINET_VAL()-Exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v5, "-1"

    return-object v5

    :catch_1
    move-exception v0

    const-string/jumbo v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "HandsetProperty"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getWIPINET_VAL is not valid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v5, "-1"

    return-object v5

    :sswitch_0
    aget-object v5, v2, v8

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ed -> :sswitch_0
        0x3ee -> :sswitch_0
        0x3ef -> :sswitch_0
        0x3f0 -> :sswitch_0
        0x3f1 -> :sswitch_0
        0x3f2 -> :sswitch_0
        0x3f3 -> :sswitch_0
        0x3f5 -> :sswitch_0
        0x3f6 -> :sswitch_0
        0x401 -> :sswitch_0
        0x410 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isQCRILVersion()Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "gsm.version.ril-impl"

    const-string/jumbo v2, "Qualcomm"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HandsetProperty"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ril version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "Qualcomm"

    const-string/jumbo v2, "Qualcomm"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    return v4
.end method

.method private static networkTypeToCurrentCh()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "gsm.network.type"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "[:]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const-string/jumbo v3, "CDMA-IS95A"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "A"

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v3, "CDMA-IS95B"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "B"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "1xRTT"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v1, "C"

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "EvDo-rev.0"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "EvDo-rev.B"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "eHRPD"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string/jumbo v1, "E"

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "EvDo-rev.A"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v1, "EA"

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "LTE"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v1, "L"

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "HandsetProperty"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wrong CurrentCh. Can not return a string. -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string/jumbo v1, ""

    goto/16 :goto_0
.end method
