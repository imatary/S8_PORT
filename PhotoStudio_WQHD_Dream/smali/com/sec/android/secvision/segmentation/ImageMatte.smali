.class public Lcom/sec/android/secvision/segmentation/ImageMatte;
.super Ljava/lang/Object;
.source "ImageMatte.java"


# static fields
.field public static final MATTE_WIDTH_ADAPTIVE:I = 0x0

.field public static final MATTE_WIDTH_DEFAULT:I = 0x6

.field public static final MATTE_WIDTH_MAX:I = 0x6

.field public static final MATTE_WIDTH_MIN:I = 0x1

.field public static final MATTE_WIDTH_NARROW:I = 0x3

.field public static final MATTE_WIDTH_NONE:I = -0x1

.field public static final MATTE_WIDTH_WIDE:I = 0xc

.field public static final NUM_PIXEL_THRESHOLD_SQRT:D

.field private static final TAG:Ljava/lang/String; = "PEDIT_ImageMatting"


# instance fields
.field private mHeight:I

.field private mInputBitmap:Landroid/graphics/Bitmap;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMatteBitmap:Landroid/graphics/Bitmap;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x412c200000000000L    # 921600.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/secvision/segmentation/ImageMatte;->NUM_PIXEL_THRESHOLD_SQRT:D

    const-string v0, "DMCImageMatting"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/secvision/segmentation/ImageMatte;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method private getAdaptiveMatteWidth(I)I
    .locals 8

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sget-wide v4, Lcom/sec/android/secvision/segmentation/ImageMatte;->NUM_PIXEL_THRESHOLD_SQRT:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x6

    :goto_0
    return v4

    :cond_0
    sget-wide v4, Lcom/sec/android/secvision/segmentation/ImageMatte;->NUM_PIXEL_THRESHOLD_SQRT:D

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double v0, v4, v6

    div-double v4, v2, v0

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static native getMatteFromMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method


# virtual methods
.method public getMatteFromMask(I)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "PEDIT_ImageMatting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMatteFromMask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mMaskBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mMatteBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/secvision/segmentation/ImageMatte;->getAdaptiveMatteWidth(I)I

    move-result p1

    :cond_1
    const-string v0, "PEDIT_ImageMatting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matteWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mInputBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mMatteBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/secvision/segmentation/ImageMatte;->getMatteFromMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mMatteBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 3

    iput-object p1, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mInputBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mHeight:I

    iget v0, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mWidth:I

    iget v1, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ImageMatte;->mMatteBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    return v0
.end method
