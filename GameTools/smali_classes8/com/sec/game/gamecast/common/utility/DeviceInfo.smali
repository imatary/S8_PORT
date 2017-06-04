.class public Lcom/sec/game/gamecast/common/utility/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static final CSC_FILE_PATH:Ljava/lang/String; = "/system/csc/sales_code.dat"

.field private static final DEFAULT_CSC:Ljava/lang/String; = "WIFI"

.field private static final DEFAULT_MNC:Ljava/lang/String; = "00"

.field public static final INIT_VALUE:I = 0x0

.field public static final STR_FAKE_CSC_FILE:Ljava/lang/String; = "fake_csc.test"

.field public static final STR_TRUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "SGAL::DeviceInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _getMCC(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    const/4 v10, 0x3

    const/4 v13, 0x1

    const-string/jumbo v2, ""

    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    if-nez v7, :cond_2

    const-string/jumbo v9, "NetworkConfig::_getMCC::telMgr is null."

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_4

    :cond_3
    const-string/jumbo v4, ""

    :cond_4
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    goto :goto_0

    :pswitch_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_1
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v9, "NetworkConfig::_getMCC::IndexOutOfBoundsException 1"

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_2
    const-string/jumbo v9, "android.os.SystemProperties"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v9, "get"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "ro.product.noCP"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "Unknown"

    aput-object v11, v9, v10

    invoke-virtual {v3, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v9, "true"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "NetworkConfig::_getMCC::noCp is false"

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x2

    :try_start_3
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "ro.virtual.value.mcc"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "Unknown"

    aput-object v11, v9, v10

    invoke-virtual {v3, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "Unknown"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v13, :cond_7

    const-string/jumbo v9, "NetworkConfig::_getMCC::virtual mcc is unknown."

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NetworkConfig::_getMCC::virtual mcc is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v8

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v9, "NetworkConfig::_getMCC::IndexOutOfBoundsException 2"

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static _getMNC(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v2, ""

    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    const-string/jumbo v4, "NetworkConfig::_getMNC::telMgr is null"

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    const-string/jumbo v4, "00"

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    const-string/jumbo v4, "00"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "NetworkConfig::_getMNC::IndexOutOfBoundsException"

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "00"

    goto :goto_0

    :cond_3
    move-object v4, v2

    goto :goto_0
.end method

.method public static getModelName()Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, "SAMSUNG-"

    const-string/jumbo v0, "OMAP_SS"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "OMAP_SS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const-string/jumbo v3, "SAMSUNG-"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
