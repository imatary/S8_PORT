.class public Lcom/samsung/android/media/codec/SemJpegSqueezer;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final TAG:Ljava/lang/String; = "JpegSQ"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "semjpegsqueezer_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "JpegSQ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to load the native library : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native compress(JILjava/io/OutputStream;[B)Z
.end method

.method public static compress(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bitmap must not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNativePtr()J

    move-result-wide v0

    const/16 v2, 0x1000

    new-array v2, v2, [B

    invoke-static {v0, v1, p1, p2, v2}, Lcom/samsung/android/media/codec/SemJpegSqueezer;->compress(JILjava/io/OutputStream;[B)Z

    move-result v0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stream must not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static transcode(Ljava/io/FileDescriptor;ILjava/io/OutputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fd must not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-eqz p2, :cond_3

    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/media/codec/SemJpegSqueezer;->transcode(Ljava/io/FileDescriptor;ILjava/io/OutputStream;[B)Z

    move-result v0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stream must not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native transcode(Ljava/io/FileDescriptor;ILjava/io/OutputStream;[B)Z
.end method
