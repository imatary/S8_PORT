.class public Lcom/android/phone/mobilenetworks/MobileNetworkLog;
.super Ljava/lang/Object;
.source "MobileNetworkLog.java"


# static fields
.field private static mOutputContents:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->mOutputContents:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->mOutputContents:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "LogMsg"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeLog()V
    .locals 12

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v1, "/data/log/mobilenetwork.txt"

    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "rw"

    invoke-direct {v3, v1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v7, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->mOutputContents:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move-object v2, v3

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/data/user/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/com.android.phone/mobilenetwork.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    throw v7

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method
