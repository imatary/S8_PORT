.class final Lcom/android/services/telephony/advanced911/laaser/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static mAppLog:Ljava/lang/String;

.field private static mAutoSubmitSize:J

.field static mCarrier:Ljava/lang/String;

.field private static mHttpResponseCode:I

.field static mImei:Ljava/lang/String;

.field private static volatile mLogging:Z

.field static mMccMnc:Ljava/lang/String;

.field private static mModel:Ljava/lang/String;

.field private static mNetIso:Ljava/lang/String;

.field private static mOsVersion:Ljava/lang/String;

.field private static mPackageName:Ljava/lang/String;

.field static mPhoneNumber:Ljava/lang/String;

.field private static volatile mSendLogs:Z

.field private static mVersionName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mAppLog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mHttpResponseCode:I

    return v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mNetIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/services/telephony/advanced911/laaser/Log;->httpsRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mPhoneNumber:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mCarrier:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mMccMnc:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mImei:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mNetIso:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mAppLog:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mVersionName:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mModel:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mOsVersion:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mHttpResponseCode:I

    const-wide/32 v0, 0x186a0

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mAutoSubmitSize:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mSendLogs:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendNum99(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->appendNum99(Ljava/lang/StringBuilder;IC)V

    return-void
.end method

.method private static appendNum99(Ljava/lang/StringBuilder;IC)V
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mLogging:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/services/telephony/advanced911/laaser/Log;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static dateTime(Z)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x3a

    const/16 v5, 0x2f

    const/16 v3, 0x10

    const/16 v4, 0xd

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/advanced911/laaser/Log;->appendNum99(Ljava/lang/StringBuilder;IC)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/advanced911/laaser/Log;->appendNum99(Ljava/lang/StringBuilder;IC)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v0, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->appendNum99(Ljava/lang/StringBuilder;I)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3, v6}, Lcom/android/services/telephony/advanced911/laaser/Log;->appendNum99(Ljava/lang/StringBuilder;IC)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3, v6}, Lcom/android/services/telephony/advanced911/laaser/Log;->appendNum99(Ljava/lang/StringBuilder;IC)V

    if-nez p0, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->appendNum99(Ljava/lang/StringBuilder;I)V

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/advanced911/laaser/Log;->appendNum99(Ljava/lang/StringBuilder;IC)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->appendNum99(Ljava/lang/StringBuilder;I)V

    goto :goto_0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mLogging:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/services/telephony/advanced911/laaser/Log;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getLogging()Z
    .locals 1

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mLogging:Z

    return v0
.end method

.method private static httpsRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "POST"

    const-string/jumbo v1, "https://locateapi.laaserapi.com/genapplog.php"

    invoke-static {v0, v1, p0}, Lcom/android/services/telephony/advanced911/laaser/Log;->httpsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static httpsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v7, "http.keepAlive"

    const-string/jumbo v8, "false"

    invoke-static {v7, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v7, "Log"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/16 v7, 0x7530

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v7, 0x7530

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string/jumbo v7, "Connection"

    const-string/jumbo v8, "close"

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&_x_pf_http_ua=Android"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    const-string/jumbo v7, "Content-Length"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "Content-Type"

    const-string/jumbo v8, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v7

    sput v7, Lcom/android/services/telephony/advanced911/laaser/Log;->mHttpResponseCode:I

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v1

    sget v7, Lcom/android/services/telephony/advanced911/laaser/Log;->mHttpResponseCode:I

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_2

    const-string/jumbo v7, "Log"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HttpResponseCode not ok: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/services/telephony/advanced911/laaser/Log;->mHttpResponseCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->readFromStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    :cond_1
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object v10

    :cond_2
    if-nez v1, :cond_3

    const-string/jumbo v7, "Log"

    const-string/jumbo v8, "no data?"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object v10

    :cond_3
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->readFromStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    if-eq v1, v7, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-eq v1, v7, :cond_5

    :cond_4
    const-string/jumbo v7, "Log"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bad data error? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_5
    const/16 v7, 0x2c

    if-eq v1, v7, :cond_4

    const-string/jumbo v7, "Log"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v7, ""

    return-object v7
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mLogging:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/services/telephony/advanced911/laaser/Log;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    sget-boolean v5, Lcom/android/services/telephony/advanced911/laaser/Log;->mLogging:Z

    if-nez v5, :cond_0

    return-void

    :cond_0
    sget-object v5, Lcom/android/services/telephony/advanced911/laaser/Log;->mAppLog:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/services/telephony/advanced911/laaser/Log;->mAppLog:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Lcom/android/services/telephony/advanced911/laaser/Log;->dateTime(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    sget-boolean v5, Lcom/android/services/telephony/advanced911/laaser/Log;->mSendLogs:Z

    if-eqz v5, :cond_2

    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/Log;->mAutoSubmitSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    const-string/jumbo v5, "dummyemail"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/Log;->submitLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    move-object v3, v4

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method static logSetup(Landroid/content/Context;)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/applog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/services/telephony/advanced911/laaser/Log;->mAppLog:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lcom/android/services/telephony/advanced911/laaser/Log;->mVersionName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v3, Lcom/android/services/telephony/advanced911/laaser/Log;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v3, Lcom/android/services/telephony/advanced911/laaser/Log;->mModel:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v3, Lcom/android/services/telephony/advanced911/laaser/Log;->mOsVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static readFromStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p0, :cond_0

    const/16 v4, 0x800

    :try_start_0
    new-array v1, v4, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string/jumbo v4, "Log"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static setAutoSubmitSize(J)V
    .locals 0

    sput-wide p0, Lcom/android/services/telephony/advanced911/laaser/Log;->mAutoSubmitSize:J

    return-void
.end method

.method static setLogging(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/services/telephony/advanced911/laaser/Log;->mLogging:Z

    return-void
.end method

.method static setSendLogs(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/services/telephony/advanced911/laaser/Log;->mSendLogs:Z

    return-void
.end method

.method static submitLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/Log;->mAppLog:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/services/telephony/advanced911/laaser/Log;->mAppLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".send"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    new-instance v1, Lcom/android/services/telephony/advanced911/laaser/Log$1;

    invoke-direct {v1, p1}, Lcom/android/services/telephony/advanced911/laaser/Log$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/advanced911/laaser/Log$1;->start()V

    return-void

    :cond_1
    return-void
.end method

.method static trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v2, Lcom/android/services/telephony/advanced911/laaser/Log;->mLogging:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/Writer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/Writer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
