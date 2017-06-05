.class public Lcom/samsung/android/media/face/SemFaceUtils;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemFaceUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "saiv_HprFace_utils_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native customConvertBitmapToNV21(Landroid/graphics/Bitmap;)[B
.end method

.method public static decodeImageFileToNV21Format(Ljava/lang/String;[I)[B
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceUtils;->customConvertBitmapToNV21(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    array-length v2, v1

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    aput v2, p1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    aput v2, p1, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No valid int[] for saving dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No input filepath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, "SemFaceUtils"

    const-string/jumbo v1, "This filepath is not a file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v3, p1, v3

    aput v3, p1, v5

    return-object v4

    :cond_3
    const-string/jumbo v0, "SemFaceUtils"

    const-string/jumbo v1, "This file cannot be decoded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v3, p1, v3

    aput v3, p1, v5

    return-object v4

    :cond_4
    const-string/jumbo v0, "SemFaceUtils"

    const-string/jumbo v1, "This file cannot be decoded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v3, p1, v3

    aput v3, p1, v5

    return-object v4
.end method
