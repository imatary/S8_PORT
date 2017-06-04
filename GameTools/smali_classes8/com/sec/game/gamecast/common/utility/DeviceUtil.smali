.class public Lcom/sec/game/gamecast/common/utility/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field public static final SIZE_GB:J = 0x40000000L

.field public static final SIZE_KB:J = 0x400L

.field public static final SIZE_MB:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "DeviceUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkChineseCase(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/DeviceInfo;->_getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isChineseUsim(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "cn"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static checkChineseDevice(Landroid/content/Context;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/DeviceInfo;->_getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getLastMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "currentMCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lastMCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deviceModel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isChineseUsim(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->setLastMCC(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isChineseUsim(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->setLastMCC(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->setLastMCC(Landroid/content/Context;Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :sswitch_0
    :try_start_3
    const-string/jumbo v6, "SM-G9300"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "SM-G9308"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "SM-G9350"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :pswitch_0
    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->setLastMCC(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->setLastMCC(Landroid/content/Context;Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x17f159d2 -> :sswitch_0
        -0x17f159ca -> :sswitch_1
        -0x17f15937 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static checkDeviceAsCSeries(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x7

    :try_start_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    move v1, v2

    :pswitch_0
    return v1

    :sswitch_0
    const-string/jumbo v4, "SM-C300"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "SM-C500"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "SM-C700"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "SM-C900"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x535c461d -> :sswitch_0
        -0x535c3e9b -> :sswitch_1
        -0x535c3719 -> :sswitch_2
        -0x535c2f97 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAvailableBytes(Landroid/os/StatFs;)J
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-wide/16 v4, 0x0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    mul-long v4, v2, v0

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAvailableBytes  ::  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return-wide v4

    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    goto :goto_0
.end method

.method public static getAvailableSpaceGB(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getAvailableSpacePath(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAvailableSpaceMB(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getAvailableSpacePath(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAvailableSpacePath(Ljava/lang/String;)J
    .locals 3

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getAvailableBytes(Landroid/os/StatFs;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "force_country"

    const-string/jumbo v3, ""

    invoke-static {p0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getDeviceCountryIsoCode()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "NONE"

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDeviceSCafeVersion()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string/jumbo v1, "ro.build.scafe.version"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "NONE"

    goto :goto_0
.end method

.method public static getDeviceSellerCode()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "NONE"

    goto :goto_0
.end method

.method public static getExternalStorageAvailableSpace()J
    .locals 4

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getAvailableBytes(Landroid/os/StatFs;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getExternalStorageAvailableSpaceGB()J
    .locals 4

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getExternalStorageAvailableSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getExternalStorageAvailableSpaceMB()J
    .locals 4

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getExternalStorageAvailableSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const/4 v0, 0x0

    return-wide v2
.end method

.method private static getLastMCC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "LAST_MCC"

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMCC(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getMNC(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getMuseSystemCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMuseSystemLanguage()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "pt_latn"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pt_BR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "pt_latn"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "pt_PT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "pt_pt"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "es_latn"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "es_US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "es_latn"

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "es_ES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "es_es"

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v0, "en_us"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "en_US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v0, "en_us"

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "en_gb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "en_gb"

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "fr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v0, "fr_fr"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fr_FR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v0, "fr_fr"

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "fr_CH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v0, "fr_fr"

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "fr_CA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "fr_ca"

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v0, "zh_cn"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh_TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v0, "zh_tw"

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "zh_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v0, "zh_hk"

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "zh_CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "zh_cn"

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v2, "account"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTimeZoneID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasFroyo()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasGingerbread()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasHoneycomb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasHoneycombMR1()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasJellyBean()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasKitKat()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasKitkatWatch()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasLollipop()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSoftNavigationBar(Landroid/content/Context;)Z
    .locals 4

    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isATTDevice()Z
    .locals 2

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getDeviceSellerCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaCountryIso()Z
    .locals 2

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getDeviceCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isChineseUsim(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    :goto_1
    return v0

    :pswitch_0
    const-string/jumbo v2, "460"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xc9ee
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static isDaydreamConnected()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "sys.daydream.connected"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "DeviceUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "daydream property : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isDesktopDockConnected(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopDockConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "DeviceUtil"

    const-string/jumbo v2, "DESKTOP DOCK CONNECTED!"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "DeviceUtil"

    const-string/jumbo v3, "DESKTOP DOCK NOT CONNECTED!"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "DeviceUtil"

    const-string/jumbo v2, "NOW IN KNOX DESKTOP MODE!"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "DeviceUtil"

    const-string/jumbo v3, "NOT IN KNOX DESKTOP MODE!"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isFileStorableAtStorage(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getExternalStorageAvailableSpace()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isKorOperator()Z
    .locals 2

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOsVer4_1()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOsVer4_2()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSamsungAccountLogin(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v2, "account"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSamsungDevice()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isSemAvailable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSetupWizardFinished(Landroid/content/Context;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "device_provisioned"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "user_setup_complete"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    move v0, v4

    :goto_1
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isVerizonDevice()Z
    .locals 2

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getDeviceSellerCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setLastMCC(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LAST_MCC"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static tryToGetMCC(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/DeviceInfo;->_getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "310"

    goto :goto_0
.end method
