.class Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;
.super Ljava/lang/Thread;
.source "QuramWinkUtileAGIFThread.java"


# static fields
.field private static final SOCKET_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "QuramWinkAGIFThread"


# instance fields
.field private duration:J

.field private is:Ljava/io/InputStream;

.field private isReadyToDraw:Z

.field private movie:Landroid/graphics/Movie;

.field private movieStart:J

.field private teminate:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->movie:Landroid/graphics/Movie;

    iput-wide v2, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->movieStart:J

    iput-wide v2, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->duration:J

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->teminate:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->isReadyToDraw:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->isReadyToDraw:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->teminate:Z

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->duration:J

    return-wide v0
.end method

.method public getMovie()Landroid/graphics/Movie;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->movie:Landroid/graphics/Movie;

    return-object v0
.end method

.method public getMovieStart()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->movieStart:J

    return-wide v0
.end method

.method public isReadyToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->isReadyToDraw:Z

    return v0
.end method

.method public run()V
    .locals 6

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->isReadyToDraw:Z

    :try_start_0
    sget-object v4, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mURLConnection:Ljava/net/URLConnection;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    sget-object v4, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mURLConnection:Ljava/net/URLConnection;

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    new-instance v4, Ljava/io/BufferedInputStream;

    sget-object v5, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->teminate:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3200000

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    invoke-static {v4, v3}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->streamToBytesAllShare(Ljava/io/InputStream;I)[B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->teminate:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v4, "QuramWinkAGIFThread"

    const-string/jumbo v5, "low memory - force GC"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "QuramWinkAGIFThread"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->movieStart:J

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->mark(I)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    invoke-static {v4}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->movie:Landroid/graphics/Movie;

    if-nez v0, :cond_6

    const-string/jumbo v4, "QuramWinkAGIFThread"

    const-string/jumbo v5, "Decode AGIF Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->isReadyToDraw:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_6
    :try_start_5
    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v4

    if-lez v4, :cond_4

    const-string/jumbo v4, "QuramWinkAGIFThread"

    const-string/jumbo v5, "Decode Agif  Success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->movieStart:J

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->duration:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_6
    const-string/jumbo v4, "QuramWinkAGIFThread"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->isReadyToDraw:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->is:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_7
    throw v4
.end method

.method public setTerminate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->teminate:Z

    return-void
.end method
