.class public Lcom/sec/game/gamecast/common/stub/StubUtil;
.super Ljava/lang/Object;
.source "StubUtil.java"


# static fields
.field public static APK_DOWNLOAD_PATH:Ljava/io/File; = null

.field public static APK_FILE_NAME:Ljava/lang/String; = null

.field public static final APK_INSTALL_REQUEST:I = 0x0

.field public static final APK_INSTALL_REQUEST_TO_GALAXYAPPS:I = 0xb

.field public static final APK_INSTALL_REQUEST_TO_PLATFORM:I = 0xa

.field public static DOWNLOAD_APK_PATH:Ljava/lang/String; = null

.field public static final GAMESERVICE_PACKAGENAME:Ljava/lang/String; = "com.enhance.gameservice"

.field public static final GET_CHINA_URL:Ljava/lang/String; = "http://cn-ms.samsungapps.com/getCNVasURL.as"

.field public static final GET_DOWNLOAD_URL_URL:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubDownload.as"

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final MCC_OF_CHINA:Ljava/lang/String; = "460"

.field private static final PD_TEST_FILE_PATH:Ljava/lang/String;

.field protected static final TYPE_GET_DOWNLOAD_URL:I = 0x2

.field protected static final TYPE_UPDATE_CHECK:I = 0x1

.field public static final UPDATE_CHECK_URL:Ljava/lang/String; = "http://vas.samsungapps.com/stub/stubUpdateCheck.as"

.field public static final USE_GALAXYAPPS_FOR_UPDATE:Z

.field private static applicationContext:Landroid/content/Context;

.field public static mDownloadFilePath:Ljava/lang/String;

.field public static uus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "StubUtil: "

    sput-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/stubguide.test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->PD_TEST_FILE_PATH:Ljava/lang/String;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->APK_DOWNLOAD_PATH:Ljava/io/File;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->uus:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callGalaxyApps(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "samsungapps://ProductDetail/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "cover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static checkUpdate(Lcom/sec/game/gamecast/common/stub/StubListener;Landroid/content/Context;Z)V
    .locals 6

    sput-object p1, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const-string/jumbo v1, "com.samsung.android.game.gametools"

    :goto_0
    const-string/jumbo v3, "http://vas.samsungapps.com/stub/stubUpdateCheck.as"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v3, "appId"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "versionCode"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "deviceId"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "mcc"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "mnc"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "csc"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getCsc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "sdkVer"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getSdkVer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "pd"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getPd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkUpdate:http://vas.samsungapps.com/stub/stubUpdateCheck.as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sec/game/gamecast/common/stub/StubRequest;

    invoke-direct {v2}, Lcom/sec/game/gamecast/common/stub/StubRequest;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setType(I)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setListener(Lcom/sec/game/gamecast/common/stub/StubListener;)V

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->isChina()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setIsChina(Z)V

    invoke-virtual {v2}, Lcom/sec/game/gamecast/common/stub/StubRequest;->run()V

    return-void

    :cond_0
    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    goto/16 :goto_0
.end method

.method public static downloadAPK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/game/gamecast/common/stub/StubListener;)V
    .locals 3

    sget-object v1, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "downloadAPK"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;

    invoke-direct {v0, p0}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->setSignature(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->setListener(Lcom/sec/game/gamecast/common/stub/StubListener;)V

    invoke-virtual {v0}, Lcom/sec/game/gamecast/common/stub/ApkDownloadManager;->run()V

    return-void
.end method

.method public static formatSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-wide/32 v6, 0x100000

    const-wide/16 v4, 0x400

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v4, 0x100000

    div-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x400

    div-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "KB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "Bytes"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unknown size"

    goto :goto_0
.end method

.method public static getApkDownloadFilePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->mDownloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method private static getCNVasURL()Ljava/lang/String;
    .locals 13

    const-string/jumbo v9, "http://vas.samsungapps.com/stub/stubUpdateCheck.as"

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v8, Ljava/net/URL;

    const-string/jumbo v10, "http://cn-ms.samsungapps.com/getCNVasURL.as"

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string/jumbo v10, "serverURL"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    if-eqz v10, :cond_0

    :try_start_3
    const-string/jumbo v10, "<serverURL>"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const-string/jumbo v11, "</serverURL>"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v4

    move-object v7, v8

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_2
    return-object v9

    :cond_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v3, 0x0

    :cond_3
    move-object v7, v8

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v7, v8

    goto :goto_1
.end method

.method public static getChinaURL()Ljava/lang/String;
    .locals 30

    sget-object v25, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    const-string/jumbo v26, "StubUtil"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    const-string/jumbo v26, "cnVasURL"

    const-string/jumbo v27, ""

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v25, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    const-string/jumbo v26, "StubUtil"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    const-string/jumbo v26, "cnVasTime"

    const-wide/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v4

    const-wide/32 v28, 0x5265c00

    cmp-long v25, v26, v28

    if-gtz v25, :cond_1

    invoke-static {v6}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v7, 0x0

    const/16 v19, 0x0

    const-string/jumbo v6, ""

    :try_start_0
    new-instance v23, Ljava/net/URL;

    const-string/jumbo v25, "http://cn-ms.samsungapps.com/getCNVasURL.as"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "http://cn-ms.samsungapps.com/getCNVasURL.as"

    invoke-static/range {v25 .. v25}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, ": "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v11

    :goto_2
    :try_start_1
    invoke-static {v11}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v19, :cond_2

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_3
    sget-object v25, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    const-string/jumbo v26, "StubUtil"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string/jumbo v25, "cnVasURL"

    move-object/from16 v0, v25

    invoke-interface {v9, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v25, "cnVasTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-interface {v9, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    const-string/jumbo v25, "\n"

    invoke-static/range {v25 .. v25}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_4
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-nez v14, :cond_6

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v25

    :goto_5
    sget-object v26, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    const-string/jumbo v27, "StubUtil"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string/jumbo v26, "cnVasURL"

    move-object/from16 v0, v26

    invoke-interface {v9, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v26, "cnVasTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v9, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v25

    :cond_6
    :try_start_4
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const-string/jumbo v25, "\n"

    invoke-static/range {v25 .. v25}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    const/16 v25, 0xc8

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "status code "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " != "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0xc8

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_8
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_7
    if-eqz v20, :cond_9

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    invoke-static {v15}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :catch_1
    move-exception v11

    move-object/from16 v19, v20

    goto/16 :goto_2

    :cond_9
    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_a
    const/16 v19, 0x0

    :try_start_6
    const-string/jumbo v25, "\n"

    invoke-static/range {v25 .. v25}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v12

    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    new-instance v25, Ljava/io/StringReader;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    :goto_8
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v10, v0, :cond_c

    packed-switch v10, :pswitch_data_0

    :cond_b
    :goto_9
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    goto :goto_8

    :pswitch_0
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v25, "serverURL"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    goto :goto_9

    :cond_c
    sget-object v25, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    const-string/jumbo v26, "StubUtil"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string/jumbo v25, "cnVasURL"

    move-object/from16 v0, v25

    invoke-interface {v9, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v25, "cnVasTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-interface {v9, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catch_2
    move-exception v8

    :try_start_7
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    :catchall_1
    move-exception v25

    move-object/from16 v19, v20

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getCsc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getDeviceSellerCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "SAMSUNG-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadUrl(Landroid/content/Context;Lcom/sec/game/gamecast/common/stub/StubListener;)V
    .locals 5

    const-string/jumbo v2, "https://vas.samsungapps.com/stub/stubDownload.as"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "appId"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "deviceId"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "mcc"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "mnc"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "csc"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getCsc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "sdkVer"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getSdkVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "encImei"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getEncImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "pd"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getPd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDownloadUrl:https://vas.samsungapps.com/stub/stubDownload.as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sec/game/gamecast/common/stub/StubRequest;

    invoke-direct {v1}, Lcom/sec/game/gamecast/common/stub/StubRequest;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setType(I)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->isChina()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setIsChina(Z)V

    invoke-virtual {v1, p1}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setListener(Lcom/sec/game/gamecast/common/stub/StubListener;)V

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/stub/StubRequest;->run()V

    return-void
.end method

.method public static getDownloadUrl(Landroid/content/Context;Lcom/sec/game/gamecast/common/stub/StubListener;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "https://vas.samsungapps.com/stub/stubDownload.as"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "appId"

    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "deviceId"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "mcc"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "mnc"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "csc"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getCsc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "sdkVer"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getSdkVer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "encImei"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getEncImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "pd"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getPd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDownloadUrl:https://vas.samsungapps.com/stub/stubDownload.as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sec/game/gamecast/common/stub/StubRequest;

    invoke-direct {v1}, Lcom/sec/game/gamecast/common/stub/StubRequest;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setType(I)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->isChina()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setIsChina(Z)V

    invoke-virtual {v1, p1}, Lcom/sec/game/gamecast/common/stub/StubRequest;->setListener(Lcom/sec/game/gamecast/common/stub/StubListener;)V

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/stub/StubRequest;->run()V

    return-void
.end method

.method public static getEncImei()Ljava/lang/String;
    .locals 8

    sget-object v5, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const-string/jumbo v5, "iso-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/Throwable;)V

    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method public static getMcc()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "getMcc: applicationContext is null!"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, ""

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/Throwable;)V

    const-string/jumbo v3, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static getMnc()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "getMnc: applicationContext is null!"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, ""

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/Throwable;)V

    const-string/jumbo v3, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "getPackageName: applicationContext is null!"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPd()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->isQA()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public static getSdkVer()Ljava/lang/String;
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode()Ljava/lang/String;
    .locals 5

    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getVersionCode: applicationContext is null!"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, ""

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/Throwable;)V

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private static getVersionCodeOfGameTools()Ljava/lang/String;
    .locals 6

    :try_start_0
    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.game.gametools"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GameService versionCode: ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "0"

    goto :goto_0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 5

    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getVersionName: applicationContext is null!"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, ""

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/Throwable;)V

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    sput-object p0, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.game.gametools.apk"

    sput-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->APK_FILE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/game/gamecast/common/stub/StubUtil;->APK_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->DOWNLOAD_APK_PATH:Ljava/lang/String;

    sget-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "APK_FILE_NAME:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->APK_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DOWNLOAD_APK_PATH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->DOWNLOAD_APK_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isChina()Z
    .locals 2

    const-string/jumbo v0, "460"

    invoke-static {}, Lcom/sec/game/gamecast/common/stub/StubUtil;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDownloadAvailable(Lcom/sec/game/gamecast/common/stub/StubData;)Z
    .locals 2

    const-string/jumbo v0, "1"

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDownloadNotAvailable(Lcom/sec/game/gamecast/common/stub/StubData;)Z
    .locals 2

    const-string/jumbo v0, "0"

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isError(Lcom/sec/game/gamecast/common/stub/StubData;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNoMatchingApplication(Lcom/sec/game/gamecast/common/stub/StubData;)Z
    .locals 2

    const-string/jumbo v0, "0"

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isQA()Z
    .locals 3

    const-string/jumbo v0, "gamemode_test"

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/local/tmp/gamemode_test"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isUpdateAvailable(Lcom/sec/game/gamecast/common/stub/StubData;)Z
    .locals 2

    const-string/jumbo v0, "2"

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUpdateNotNecessary(Lcom/sec/game/gamecast/common/stub/StubData;)Z
    .locals 2

    const-string/jumbo v0, "1"

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/sec/game/gamecast/common/stub/StubUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "StubGuideSample got exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static makeDeepLinkIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.app.samsungapps"

    const-string/jumbo v2, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "directcall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "CallerType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "GUID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "cover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static removeDownloadedApks()V
    .locals 6

    sget-object v2, Lcom/sec/game/gamecast/common/stub/StubUtil;->APK_DOWNLOAD_PATH:Ljava/io/File;

    new-instance v3, Lcom/sec/game/gamecast/common/stub/StubUtil$1;

    invoke-direct {v3}, Lcom/sec/game/gamecast/common/stub/StubUtil$1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDownloadedApks success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDownloadedApks fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static setApkDownloadFilePath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/game/gamecast/common/stub/StubUtil;->mDownloadFilePath:Ljava/lang/String;

    return-void
.end method

.method public static validateApkSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    const/4 v10, 0x0

    :try_start_0
    sget-object v11, Lcom/sec/game/gamecast/common/stub/StubUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v11, 0x40

    invoke-virtual {v6, p0, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v11, "X.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_1

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v12

    array-length v13, v12

    move v11, v10

    :goto_0
    if-ge v11, v13, :cond_0

    aget-byte v0, v12, v11

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_1

    const/4 v10, 0x1

    :cond_1
    :goto_1
    return v10

    :catch_0
    move-exception v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/stub/StubUtil;->log(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
