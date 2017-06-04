.class public Lcom/samsung/android/common/log/LoggerFile;
.super Lcom/samsung/android/common/log/Logger$Impl;
.source "LoggerFile.java"

# interfaces
.implements Lcom/samsung/android/common/log/Logger$Core;


# static fields
.field private static final priorities:[Ljava/lang/String;


# instance fields
.field private fd:Lcom/samsung/android/common/log/LogDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "H"

    aput-object v1, v0, v3

    const-string v1, "V"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "I"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "W"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/common/log/LoggerFile;->priorities:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/common/log/LoggerFile;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/samsung/android/common/log/LogLineInfo;->excludeClass([Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/common/log/Logger$Impl;-><init>()V

    sget-object v0, Lcom/samsung/android/common/log/LogDescriptor;->NULL:Lcom/samsung/android/common/log/LogDescriptor;

    invoke-virtual {p0, v0}, Lcom/samsung/android/common/log/LoggerFile;->setLogDescriptor(Lcom/samsung/android/common/log/LogDescriptor;)V

    return-void
.end method

.method private static getDate()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02d-%02d %02d:%02d:%02d.%03d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeLogLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/common/log/LoggerFile;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/common/log/LogLineInfo;

    invoke-direct {v1}, Lcom/samsung/android/common/log/LogLineInfo;-><init>()V

    invoke-virtual {v1, p2}, Lcom/samsung/android/common/log/LogLineInfo;->makeLogLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized writeLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/common/log/LoggerFile;->getLogFileDescriptor()Lcom/samsung/android/common/log/LogDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/common/log/LogDescriptor;->onBefore()V

    invoke-virtual {p0}, Lcom/samsung/android/common/log/LoggerFile;->getLogFileDescriptor()Lcom/samsung/android/common/log/LogDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/common/log/LoggerFile;->makeLogLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/LogDescriptor;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/common/cipher/AESWithRSA;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[!] Log encryption failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    sget-object v1, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public declared-synchronized getLogFileDescriptor()Lcom/samsung/android/common/log/LogDescriptor;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/common/log/LoggerFile;->fd:Lcom/samsung/android/common/log/LogDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/common/log/LoggerFile;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    sget-object v0, Lcom/samsung/android/common/log/LoggerFile;->priorities:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/common/log/LoggerFile;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setLogDescriptor(Lcom/samsung/android/common/log/LogDescriptor;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/common/log/LoggerFile;->fd:Lcom/samsung/android/common/log/LogDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shift()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/common/log/LoggerFile;->getLogFileDescriptor()Lcom/samsung/android/common/log/LogDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/common/log/LogDescriptor;->shift()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
