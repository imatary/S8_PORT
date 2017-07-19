.class public Lcom/android/gallery3d/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/BitmapUtils$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_JPEG_QUALITY:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "Cropper2_BitmapUtils"

.field public static final UNCONSTRAINED:I = -0x1

.field private static mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/gallery3d/util/BitmapUtils$1;

    invoke-direct {v0}, Lcom/android/gallery3d/util/BitmapUtils$1;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/BitmapUtils;->mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;)[B
    .locals 1

    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static computeInitialSampleSize(IIII)I
    .locals 3

    const/4 v0, 0x1

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    if-ne p2, v2, :cond_0

    return v0

    :cond_0
    if-ne p3, v2, :cond_1

    :goto_0
    if-ne p2, v2, :cond_2

    return v0

    :cond_1
    mul-int v0, p0, p1

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_2
    div-int v1, p0, p2

    div-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static computeSampleSize(F)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->assertTrue(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->nextPowerOf2(I)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public static computeSampleSize(IIII)I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/util/BitmapUtils;->computeInitialSampleSize(IIII)I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->nextPowerOf2(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 3

    const/4 v2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-gt v0, v2, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->prevPowerOf2(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(III)I
    .locals 3

    const/4 v2, 0x1

    div-int v0, p0, p2

    div-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v0, v2, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->prevPowerOf2(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public static createBlurredImage(Landroid/content/Context;FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    :try_start_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/BitmapUtils;->mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v3}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_BitmapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/renderscript/RSRuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "android.media.MediaMetadataRetriever"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    const-string/jumbo v0, "setDataSource"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-gt v0, v4, :cond_1

    const-string/jumbo v0, "captureFrame"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    :try_start_3
    const-string/jumbo v2, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1f

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_4
    const-string/jumbo v0, "getEmbeddedPicture"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_3

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    :try_start_5
    const-string/jumbo v2, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1e

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :try_start_6
    const-string/jumbo v0, "getFrameAtTime"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_1c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_4

    :try_start_7
    const-string/jumbo v2, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1d

    :cond_4
    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    :try_start_8
    const-string/jumbo v4, "Cropper2_BitmapUtils"

    const-string/jumbo v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_5

    :try_start_9
    const-string/jumbo v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1a

    :cond_5
    :goto_4
    return-object v2

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5
    :try_start_a
    const-string/jumbo v4, "Cropper2_BitmapUtils"

    const-string/jumbo v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v1, :cond_5

    :try_start_b
    const-string/jumbo v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    :try_start_c
    const-string/jumbo v4, "Cropper2_BitmapUtils"

    const-string/jumbo v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v1, :cond_5

    :try_start_d
    const-string/jumbo v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_7
    :try_start_e
    const-string/jumbo v4, "Cropper2_BitmapUtils"

    const-string/jumbo v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v1, :cond_5

    :try_start_f
    const-string/jumbo v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_8
    :try_start_10
    const-string/jumbo v4, "Cropper2_BitmapUtils"

    const-string/jumbo v5, "createVideoThumbnail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v1, :cond_5

    :try_start_11
    const-string/jumbo v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_4

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_9
    if-eqz v1, :cond_5

    :try_start_12
    const-string/jumbo v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_4

    :catch_a
    move-exception v0

    goto/16 :goto_4

    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_a
    if-eqz v1, :cond_5

    :try_start_13
    const-string/jumbo v0, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    goto/16 :goto_4

    :catch_c
    move-exception v0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_b
    if-eqz v1, :cond_6

    :try_start_14
    const-string/jumbo v2, "release"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    :cond_6
    :goto_c
    throw v0

    :catch_d
    move-exception v1

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_b

    :catch_e
    move-exception v0

    move-object v1, v2

    goto :goto_a

    :catch_f
    move-exception v0

    goto :goto_a

    :catch_10
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catch_11
    move-exception v0

    goto :goto_9

    :catch_12
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catch_13
    move-exception v0

    goto :goto_8

    :catch_14
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    :catch_15
    move-exception v0

    goto/16 :goto_7

    :catch_16
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :catch_17
    move-exception v0

    goto/16 :goto_6

    :catch_18
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    :catch_19
    move-exception v0

    goto/16 :goto_5

    :catch_1a
    move-exception v0

    goto/16 :goto_4

    :catch_1b
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_1c
    move-exception v0

    goto/16 :goto_3

    :catch_1d
    move-exception v1

    goto/16 :goto_2

    :catch_1e
    move-exception v1

    goto/16 :goto_1

    :catch_1f
    move-exception v1

    goto/16 :goto_0
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object v0
.end method

.method public static getRotatedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    if-nez p3, :cond_1

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, p1, p2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v1, p0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v4, p3

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v7

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, p1, p2, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v3, v0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "Cropper2_BitmapUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Cropper2_BitmapUtils"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static isRotationSupported(Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedByRegionDecoder(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static recycleSilently(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_BitmapUtils"

    const-string/jumbo v2, "unable recycle bitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static resizeAndCropCenter(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v4, 0x0

    rem-int/lit16 v1, p2, 0xb4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    if-eqz v0, :cond_1

    move v3, v2

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p1, v1, v2, p2, p3}, Lcom/android/gallery3d/util/BitmapUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    if-eqz p3, :cond_3

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_2
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v5, v3, v2

    div-float v6, v4, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v5, v3, v2

    if-nez v5, :cond_4

    cmpl-float v5, v4, v0

    if-nez v5, :cond_4

    return-object v1

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    :cond_4
    sub-float/2addr v3, v2

    div-float/2addr v3, v7

    sub-float/2addr v4, v0

    div-float/2addr v4, v7

    float-to-int v3, v3

    float-to-int v4, v4

    float-to-int v2, v2

    float-to-int v0, v0

    invoke-static {v1, v3, v4, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p2, :cond_0

    if-ne v1, p3, :cond_0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    rem-int/lit16 v3, p1, 0xb4

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    move v2, v1

    :goto_1
    int-to-float v2, v2

    if-eqz v3, :cond_3

    :goto_2
    int-to-float v0, v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v6, v6, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v6, v6, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v1, v3, p1, p4}, Lcom/android/gallery3d/util/BitmapUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v1, p2, :cond_4

    if-ne v0, p3, :cond_4

    return-object v2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    if-lt v1, p2, :cond_5

    if-ge v0, p3, :cond_6

    :cond_5
    int-to-float v3, v1

    int-to-float v4, p2

    div-float/2addr v3, v4

    int-to-float v4, v0

    int-to-float v5, p3

    div-float/2addr v4, v5

    cmpg-float v5, v3, v4

    if-gez v5, :cond_8

    int-to-float v4, p3

    mul-float/2addr v3, v4

    float-to-int p3, v3

    move p2, v1

    :cond_6
    :goto_3
    int-to-float v3, v1

    int-to-float v4, p2

    div-float/2addr v3, v4

    int-to-float v4, v0

    int-to-float v5, p3

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2}, Lcom/android/gallery3d/util/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {p2, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v1, p2, v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    sub-int v0, p3, v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, v2, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p4, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    return-object v4

    :cond_8
    int-to-float v3, p2

    mul-float/2addr v3, v4

    float-to-int p2, v3

    move p3, v0

    goto :goto_3
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    return-object p0

    :cond_1
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/util/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object v0
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, p1

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v2, p1

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, v0, p2}, Lcom/android/gallery3d/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0
.end method

.method public static saveBitmapPNG(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_BitmapUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    move v0, v3

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Cropper2_BitmapUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    const-string/jumbo v2, "Cropper2_BitmapUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2
.end method
