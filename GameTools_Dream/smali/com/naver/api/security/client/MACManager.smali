.class public Lcom/naver/api/security/client/MACManager;
.super Ljava/lang/Object;
.source "MACManager.java"


# static fields
.field private static final DEFAULT_CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final DEFAULT_CORRECTION_CONDITION_MILLIS:J = 0x927c0L

.field private static final DEFAULT_CORRECTION_MILLIS:J = 0x0L

.field private static final DEFAULT_READ_TIMEOUT_MS:I = 0x7530

.field private static final DEFAULT_REMOTE_CURRENTTIME_URL:Ljava/lang/String; = "http://global.apis.naver.com/currentTime"

.field private static final KEY_FILENAME:Ljava/lang/String; = "/NHNAPIGatewayKey.properties"

.field private static final THREAD_COUNT:I = 0x2

.field private static connectionTimeoutMs:I

.field static correctionMillis:J

.field static correctionMillisFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static correctionWhenConditionMs:J

.field static final executor:Ljava/util/concurrent/ExecutorService;

.field private static volatile isThreadRunning:Z

.field private static final lock:Ljava/lang/Object;

.field private static mac:Ljavax/crypto/Mac;

.field private static readTimeoutMs:I

.field private static remoteCurrentTimeUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x7530

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/naver/api/security/client/MACManager;->lock:Ljava/lang/Object;

    sput v1, Lcom/naver/api/security/client/MACManager;->connectionTimeoutMs:I

    sput v1, Lcom/naver/api/security/client/MACManager;->readTimeoutMs:I

    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/naver/api/security/client/MACManager;->correctionWhenConditionMs:J

    const-string/jumbo v0, "http://global.apis.naver.com/currentTime"

    sput-object v0, Lcom/naver/api/security/client/MACManager;->remoteCurrentTimeUrl:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/naver/api/security/client/MACManager;->isThreadRunning:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/naver/api/security/client/MACManager;->correctionMillis:J

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/naver/api/security/client/MACManager;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/naver/api/security/client/MACManager;->remoteCurrentTimeUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/naver/api/security/client/MACManager;->connectionTimeoutMs:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/naver/api/security/client/MACManager;->readTimeoutMs:I

    return v0
.end method

.method static synthetic access$300()J
    .locals 2

    sget-wide v0, Lcom/naver/api/security/client/MACManager;->correctionWhenConditionMs:J

    return-wide v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/naver/api/security/client/MACManager;->isThreadRunning:Z

    return p0
.end method

.method private static calcuateCorrectionTime(J)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, p0, v2

    sget-wide v4, Lcom/naver/api/security/client/MACManager;->correctionWhenConditionMs:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    sput-wide v0, Lcom/naver/api/security/client/MACManager;->correctionMillis:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/naver/api/security/client/MACManager;->correctionMillis:J

    goto :goto_0
.end method

.method private static calcuateCorrectionTimeOnAnotherThread()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    sput-boolean v1, Lcom/naver/api/security/client/MACManager;->isThreadRunning:Z

    :try_start_0
    sget-object v1, Lcom/naver/api/security/client/MACManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/naver/api/security/client/MACManager$1;

    invoke-direct {v2}, Lcom/naver/api/security/client/MACManager$1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    sput-object v1, Lcom/naver/api/security/client/MACManager;->correctionMillisFuture:Ljava/util/concurrent/Future;

    sget-object v1, Lcom/naver/api/security/client/MACManager;->correctionMillisFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/naver/api/security/client/MACManager;->isThreadRunning:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getConnectionTimeoutMs()I
    .locals 1

    sget v0, Lcom/naver/api/security/client/MACManager;->connectionTimeoutMs:I

    return v0
.end method

.method public static getCorrectionWhenConditionMs()J
    .locals 2

    sget-wide v0, Lcom/naver/api/security/client/MACManager;->correctionWhenConditionMs:J

    return-wide v0
.end method

.method public static getEncryptUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/naver/api/security/client/MACManager;->mac:Ljavax/crypto/Mac;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/api/security/client/MACManager;->initialize()V

    :cond_0
    sget-object v0, Lcom/naver/api/security/client/MACManager;->mac:Ljavax/crypto/Mac;

    sget-wide v2, Lcom/naver/api/security/client/MACManager;->correctionMillis:J

    invoke-static {v0, p0, v2, v3}, Lcom/naver/api/security/HmacUtil;->makeEncryptUrl(Ljavax/crypto/Mac;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptUrl(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/naver/api/security/client/MACManager;->mac:Ljavax/crypto/Mac;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/api/security/client/MACManager;->initialize()V

    :cond_0
    sget-object v0, Lcom/naver/api/security/client/MACManager;->mac:Ljavax/crypto/Mac;

    invoke-static {v0, p0, p1, p2}, Lcom/naver/api/security/HmacUtil;->makeEncryptUrlWithMsgpad(Ljavax/crypto/Mac;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptUrl(Ljava/lang/String;Lcom/naver/api/util/Type;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/naver/api/util/Type;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    sget-wide v2, Lcom/naver/api/security/client/MACManager;->correctionMillis:J

    invoke-static {v0, p0, v2, v3}, Lcom/naver/api/security/HmacUtil;->makeEncryptUrl(Ljavax/crypto/Mac;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptUrl(Ljava/lang/String;Lcom/naver/api/util/Type;Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/naver/api/util/Type;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-static {v0, p0, p3, p4}, Lcom/naver/api/security/HmacUtil;->makeEncryptUrlWithMsgpad(Ljavax/crypto/Mac;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadTimeoutMs()I
    .locals 1

    sget v0, Lcom/naver/api/security/client/MACManager;->readTimeoutMs:I

    return v0
.end method

.method public static getRemoteCurrentTimeUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/naver/api/security/client/MACManager;->remoteCurrentTimeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/naver/api/util/Type;->FILE:Lcom/naver/api/util/Type;

    const-string/jumbo v1, "/NHNAPIGatewayKey.properties"

    invoke-static {v0, v1}, Lcom/naver/api/security/client/MACManager;->initialize(Lcom/naver/api/util/Type;Ljava/lang/String;)V

    return-void
.end method

.method public static initialize(Lcom/naver/api/util/Type;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v1, Lcom/naver/api/security/client/MACManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/naver/api/security/client/MACManager;->mac:Ljavax/crypto/Mac;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/naver/api/util/Type;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    sput-object v0, Lcom/naver/api/security/client/MACManager;->mac:Ljavax/crypto/Mac;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setConnectionTimeoutMs(I)V
    .locals 0

    sput p0, Lcom/naver/api/security/client/MACManager;->connectionTimeoutMs:I

    return-void
.end method

.method public static setCorrectionWhenConditionMs(J)V
    .locals 0

    sput-wide p0, Lcom/naver/api/security/client/MACManager;->correctionWhenConditionMs:J

    return-void
.end method

.method public static setReadTimeoutMs(I)V
    .locals 0

    sput p0, Lcom/naver/api/security/client/MACManager;->readTimeoutMs:I

    return-void
.end method

.method public static setRemoteCurrentTimeUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/naver/api/security/client/MACManager;->remoteCurrentTimeUrl:Ljava/lang/String;

    return-void
.end method

.method public static syncWithServerTime(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/naver/api/security/client/MACManager;->calcuateCorrectionTime(J)V

    return-void
.end method

.method public static syncWithServerTimeByHttpAsync()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/naver/api/security/client/MACManager;->isThreadRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/api/security/client/MACManager;->correctionMillisFuture:Ljava/util/concurrent/Future;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/naver/api/security/client/MACManager;->calcuateCorrectionTimeOnAnotherThread()Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method public static syncWithServerTimeByHttpAsync(II)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/naver/api/security/client/MACManager;->setConnectionTimeoutMs(I)V

    invoke-static {p1}, Lcom/naver/api/security/client/MACManager;->setReadTimeoutMs(I)V

    invoke-static {}, Lcom/naver/api/security/client/MACManager;->syncWithServerTimeByHttpAsync()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static toStringFromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x400

    new-array v3, v4, [C

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/Reader;->read([C)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    throw v4

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-eqz p0, :cond_2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_2
    return-object v4

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_1
.end method
