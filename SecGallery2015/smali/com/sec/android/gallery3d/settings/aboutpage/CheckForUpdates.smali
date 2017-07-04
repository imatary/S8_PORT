.class public Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;
.super Ljava/lang/Object;
.source "CheckForUpdates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;,
        Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;
    }
.end annotation


# static fields
.field public static final APP_UPDATE_CHECK_INTERVAL:J = 0x5265c00L

.field private static final CALLER_TYPE:Ljava/lang/String; = "CallerType"

.field private static final CONNECTION_TIMEOUT_VALUE:I = 0x7530

.field private static final DIRECT_CALL:Ljava/lang/String; = "directcall"

.field private static final GUID:Ljava/lang/String; = "GUID"

.field private static final RESULT_CODE_DEFAULT:I = -0x1

.field private static final RESULT_CODE_NOT_AVAILABLE:I = 0x0

.field private static final RESULT_CODE_NOT_NECESSARY_TO_UPDATE:I = 0x1

.field public static final RESULT_CODE_NOT_REQUESTED:I = 0x4

.field public static final RESULT_CODE_NO_NETWORK:I = 0x3

.field private static final RESULT_CODE_PARAMETER_MISSING:I = 0x3e8

.field public static final RESULT_CODE_UPDATE_AVAILABLE:I = 0x2

.field private static final SAMSUNG_APPS_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps.Main"

.field private static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static final TAG:Ljava/lang/String; = "CheckForUpdates"

.field private static final TAG_APP_ID:Ljava/lang/String; = "appId"

.field private static final TAG_CONTENT_SIZE:Ljava/lang/String; = "contentSize"

.field private static final TAG_CSC:Ljava/lang/String; = "csc"

.field private static final TAG_DELTA_CONTENT_SIZE:Ljava/lang/String; = "deltaContentSize"

.field private static final TAG_DELTA_DOWNLLOAD_URL:Ljava/lang/String; = "deltaDownloadURI"

.field private static final TAG_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final TAG_DOWNLOAD_URL:Ljava/lang/String; = "downloadURI"

.field private static final TAG_GSIGNATURE_DOWNLOAD_URL:Ljava/lang/String; = "gSignatureDownloadURL"

.field private static final TAG_MCC:Ljava/lang/String; = "mcc"

.field private static final TAG_MNC:Ljava/lang/String; = "mnc"

.field private static final TAG_PD:Ljava/lang/String; = "pd"

.field private static final TAG_PRODUCT_ID:Ljava/lang/String; = "productId"

.field private static final TAG_PRODUCT_NAME:Ljava/lang/String; = "productName"

.field private static final TAG_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field private static final TAG_RESULT_MSG:Ljava/lang/String; = "resultMsg"

.field private static final TAG_SDKVER:Ljava/lang/String; = "sdkVer"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final TAG_VERSION_NAME:Ljava/lang/String; = "versionName"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_UPDATE:I = 0x1

.field private static final UPDATE_CHECK_URL:Ljava/lang/String; = "http://vas.samsungapps.com/stub/stubUpdateCheck.as"

.field private static sClearBadge:Z

.field private static sResult:I

.field private static sStubUpdateData:Lcom/sec/android/gallery3d/settings/aboutpage/StubData;

.field private static sUiListener:Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sStubUpdateData:Lcom/sec/android/gallery3d/settings/aboutpage/StubData;

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sResult:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sClearBadge:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sClearBadge:Z

    return p0
.end method

.method static synthetic access$100(ILandroid/content/Context;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->getMarketResult(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sResult:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    sput p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sResult:I

    return p0
.end method

.method static synthetic access$300()Lcom/sec/android/gallery3d/settings/aboutpage/StubData;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sStubUpdateData:Lcom/sec/android/gallery3d/settings/aboutpage/StubData;

    return-object v0
.end method

.method static synthetic access$400()Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sUiListener:Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;

    return-object v0
.end method

.method private static checkUpdateApk(ZLandroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;-><init>(ZLandroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$CheckForUpdateTask;->execute()V

    return-void
.end method

.method private static getMarketResult(ILandroid/content/Context;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->getUpdateCheckUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v3, "CheckForUpdates"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p0}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->getResult(Ljava/net/URL;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CheckForUpdates"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static getResult()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sResult:I

    return v0
.end method

.method private static getResult(Ljava/net/URL;I)I
    .locals 16

    const-string/jumbo v13, "CheckForUpdates"

    const-string/jumbo v14, "getResult : com.sec.android.gallery3d"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x3

    const/4 v4, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/16 v13, 0x7530

    invoke-virtual {v1, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v13, 0x7530

    invoke-virtual {v1, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v13, 0x0

    invoke-interface {v5, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v11, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;

    invoke-direct {v11}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;-><init>()V

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    const/4 v13, 0x1

    if-eq v6, v13, :cond_f

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_0

    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "appId"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "appid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setAppId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v13, "CheckForUpdates"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x3

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    return v10

    :cond_2
    :try_start_3
    const-string/jumbo v13, "resultCode"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "resultCode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setResultCode(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v13

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    throw v13

    :cond_4
    :try_start_5
    const-string/jumbo v13, "resultMsg"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setResultMsg(Ljava/lang/String;)V

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "resultMsg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v13, "versionCode"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "versionCode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setVersionCode(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v13, "versionName"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "versionName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setVersionName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v13, "contentSize"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "contentSize: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setContentSize(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v13, "downloadURI"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "downloadURI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setDownloadURI(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v13, "deltaDownloadURI"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "deltaDownloadURI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setDeltaDownloadURI(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v13, "deltaContentSize"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "deltaContentSize: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setDeltaContentSize(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v13, "signature"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "signature: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setSignature(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v13, "gSignatureDownloadURL"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "gSignatureDownloadURL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setgSignatureDownloadURL(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v13, "productId"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "productId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setProductId(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v13, "productName"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v13, 0x4

    if-ne v7, v13, :cond_0

    const-string/jumbo v13, "CheckForUpdates"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "productName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/settings/aboutpage/StubData;->setProductName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_10

    sput-object v11, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sStubUpdateData:Lcom/sec/android/gallery3d/settings/aboutpage/StubData;

    :cond_10
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v9

    const/4 v13, 0x2

    if-ne v13, v9, :cond_12

    const/4 v10, 0x2

    :cond_11
    :goto_4
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v13, "CheckForUpdates"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_12
    if-nez v9, :cond_13

    const/4 v10, 0x0

    goto :goto_4

    :cond_13
    const/4 v13, 0x1

    if-ne v13, v9, :cond_14

    const/4 v10, 0x1

    goto :goto_4

    :cond_14
    const/16 v13, 0x3e8

    if-ne v13, v9, :cond_11

    const/16 v10, 0x3e8

    goto :goto_4

    :catch_2
    move-exception v2

    const-string/jumbo v13, "CheckForUpdates"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_3
    move-exception v2

    const-string/jumbo v14, "CheckForUpdates"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getUpdateCheckUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "http://vas.samsungapps.com/stub/stubUpdateCheck.as"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "appId"

    const-string/jumbo v2, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "versionCode"

    const-string/jumbo v2, "com.sec.android.gallery3d"

    invoke-static {v2, p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AppsStubUtil;->getVersionCode(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "deviceId"

    invoke-static {}, Lcom/sec/android/gallery3d/settings/aboutpage/AppsStubUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "mcc"

    invoke-static {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AppsStubUtil;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "mnc"

    invoke-static {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AppsStubUtil;->getMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "csc"

    invoke-static {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AppsStubUtil;->getCsc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "sdkVer"

    invoke-static {}, Lcom/sec/android/gallery3d/settings/aboutpage/AppsStubUtil;->getSdkVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "pd"

    invoke-static {}, Lcom/sec/android/gallery3d/settings/aboutpage/AppsStubUtil;->getPd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static jumpToSamsungApps(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "CheckForUpdates"

    const-string/jumbo v3, "jumpToSamsungApps : com.sec.android.gallery3d"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.android.app.samsungapps"

    const-string/jumbo v3, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "directcall"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "CallerType"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "GUID"

    const-string/jumbo v3, "com.sec.android.gallery3d"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "cover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CheckForUpdates"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static needToShowBadge(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "CheckForUpdates"

    const-string/jumbo v3, "needToShowBadge false(UPSM)"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    sget v3, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sResult:I

    if-ne v3, v5, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "hide_badge"

    invoke-static {p0, v3, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v1, "CheckForUpdates"

    const-string/jumbo v3, "needToShowBadge false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    sget v3, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sResult:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    const-string/jumbo v3, "backup_update_check_result"

    sget v4, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sResult:I

    invoke-static {p0, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_4

    move v0, v1

    :cond_3
    :goto_2
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public static setUiUpdateListener(Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;ZZLandroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "CheckForUpdates"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUiUpdateListener needToCheckupdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " clearBadge : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sput-object p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->sUiListener:Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;

    invoke-static {p2, p3}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->checkUpdateApk(ZLandroid/content/Context;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, "hide_badge"

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "backup_update_check_result"

    const/4 v1, -0x1

    invoke-static {p3, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
