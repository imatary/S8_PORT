.class public abstract Lcom/samsung/android/common/log/LogDescriptor$Stream;
.super Lcom/samsung/android/common/log/LogDescriptor;
.source "LogDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/log/LogDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stream"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/log/LogDescriptor;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public isLogExceeds(J)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/common/log/LogDescriptor$Stream;->size()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public println(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/samsung/android/common/log/LogDescriptor$Stream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_4
    sget-object v2, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_3
    move-exception v1

    :try_start_6
    sget-object v2, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    sget-object v2, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_1
    :try_start_8
    throw v2

    :catch_5
    move-exception v1

    sget-object v3, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v3, v1}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1
.end method

.method protected abstract size()J
.end method
