.class public Lcom/sec/samsung/gallery/decoder/DecoderInterface;
.super Ljava/lang/Object;
.source "DecoderInterface.java"


# static fields
.field private static final ASTC_HEADER:[B

.field private static final FEATURE_IS_NOS:Z

.field public static final FEATURE_SECMMCODEC_ENABLED:Z = true

.field public static final FEATURE_USE_QURAM_DECODER:Z

.field private static final TAG:Ljava/lang/String; = "DecoderInterface"


# instance fields
.field private mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQuramDecoder:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_USE_QURAM_DECODER:Z

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->ASTC_HEADER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x13t
        -0x55t
        -0x5ft
        0x5ct
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTileAlphaBlending:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    :cond_0
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->isAstcByteArray([BI)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v1, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_USE_QURAM_DECODER:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/decoder/QuramCodecInterface;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static decodeDNGPreview(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_USE_QURAM_DECODER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/decoder/QuramCodecInterface;->decodeDNGPreview(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_USE_QURAM_DECODER:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/QuramCodecInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/SecMMCodecInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    sget-boolean v3, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_IS_NOS:Z

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "DecoderInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OutOfMemoryError : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    sget-boolean v3, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_IS_NOS:Z

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "DecoderInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OutOfMemoryError : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeResourceNinePatch(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DecoderInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OutOfMemoryError : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static isAstcByteArray([BI)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-le v2, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    sget-object v3, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->ASTC_HEADER:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static parseMetadata(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_USE_QURAM_DECODER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/decoder/QuramCodecInterface;->parseMetadata(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public centerDrawTiles(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;IIFIILcom/sec/android/gallery3d/ui/ScreenNail;II)V
    .locals 13

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->centerDrawTiles(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;IIFIILcom/sec/android/gallery3d/ui/ScreenNail;II)V

    :cond_0
    return-void
.end method

.method public drawOnCenter(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIIIFLcom/sec/android/gallery3d/ui/ScreenNail;I)Z
    .locals 10

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->drawOnCenter(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIIIFLcom/sec/android/gallery3d/ui/ScreenNail;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawOnScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/ScreenNail;IIIII)V
    .locals 9

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->drawOnScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/ScreenNail;IIIII)V

    :cond_0
    return-void
.end method

.method public getAlphablendingAnimationInterface()Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->getAlphablendingAnimationInterface()Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageChanging()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->isImageChanging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLevelChanged(Lcom/sec/android/gallery3d/ui/GLRoot;I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->isLevelChanged(Lcom/sec/android/gallery3d/ui/GLRoot;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareAlphablendingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->prepareAlphablendingAnimation()V

    :cond_0
    return-void
.end method
