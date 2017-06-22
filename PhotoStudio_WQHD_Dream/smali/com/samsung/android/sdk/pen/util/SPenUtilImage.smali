.class public Lcom/samsung/android/sdk/pen/util/SPenUtilImage;
.super Ljava/lang/Object;
.source "SPenUtilImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPenUtilImage"


# instance fields
.field protected mContextResources:Landroid/content/res/Resources;

.field protected mCustom_imagepath:Ljava/lang/String;

.field protected mDrawableContext:Landroid/content/Context;

.field protected mOnePT:F

.field protected mSdkResources:Landroid/content/res/Resources;

.field protected mSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mOnePT:F

    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mCustom_imagepath:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mContextResources:Landroid/content/res/Resources;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkVersion:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mCustom_imagepath:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p3

    iput v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mOnePT:F

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mContextResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static resizeImage(Landroid/content/Context;Ljava/lang/String;IIF)Landroid/graphics/drawable/Drawable;
    .locals 20

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    const/16 v16, 0x7

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    const/16 v16, 0x0

    :goto_0
    return-object v16

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    const-string v16, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/16 v16, 0x1

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v16

    move/from16 v0, v16

    float-to-int v12, v0

    const/16 v16, 0x1

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v16

    move/from16 v0, v16

    float-to-int v11, v0

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    invoke-static {v12, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v16, v12, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-int/lit8 v17, v11, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, p4

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v3, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v7, [[I

    new-array v1, v6, [I

    const v4, -0x10100a7

    aput v4, v1, v5

    aput-object v1, v0, v5

    new-array v2, v6, [I

    const v4, 0x10100a7

    aput v4, v2, v5

    aput-object v2, v0, v6

    new-array v3, v7, [I

    aput p1, v3, v5

    aput p1, v3, v6

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4
.end method

.method public getIntValueAppliedDensity(F)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mOnePT:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getSprDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v2, "SPenUtilImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSprViewBackground - invalid id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public resizeImage(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;
    .locals 26

    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v20

    if-nez v20, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/16 v21, 0x0

    const/4 v3, 0x6

    :try_start_0
    new-array v0, v3, [B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    const-string v3, "SPenUtilImage"

    const-string v4, "Failed to read stream 1."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-byte v3, v21, v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    aget-byte v3, v21, v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    aget-byte v3, v21, v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_2

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromResourceStream(Landroid/content/res/Resources;I)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object v12

    move/from16 v0, p3

    int-to-float v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v16

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v15

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v15, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v3, v4, v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v12, 0x0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, p3

    int-to-float v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v14

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v13

    int-to-float v3, v14

    int-to-float v4, v5

    div-float v19, v3, v4

    int-to-float v3, v13

    int-to-float v4, v6

    div-float v18, v3, v4

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v3, v22, v24

    if-lez v3, :cond_4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v3, v22, v24

    if-lez v3, :cond_4

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff199999999999aL    # 1.1

    cmpg-double v3, v22, v24

    if-gez v3, :cond_4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff199999999999aL    # 1.1

    cmpg-double v3, v22, v24

    if-gez v3, :cond_4

    if-nez p5, :cond_4

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_4
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    const/4 v2, 0x0

    if-eqz p5, :cond_5

    :try_start_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mContextResources:Landroid/content/res/Resources;

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "SPenUtilImage"

    const-string v4, "mContextResources is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public setDrawableCheckedImg(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    new-array v1, v4, [I

    const v2, -0x10100a0

    aput v2, v1, v3

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-array v1, v4, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method public setDrawableCheckedImg(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    new-array v1, v4, [I

    const v2, -0x10100a0

    aput v2, v1, v3

    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-array v1, v4, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method public setDrawableCheckedImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p2, :cond_0

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p2, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, p1, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, p3, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p4, :cond_3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    invoke-virtual {p0, p4, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p1, :cond_4

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    invoke-virtual {p0, p1, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz p2, :cond_5

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    invoke-virtual {p0, p2, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_5
    return-object v0

    :array_0
    .array-data 4
        0x10100a0
        -0x101009c
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        -0x10100a0
        -0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x10100a0
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        -0x10100a0
        0x101009c
        0x101009e
    .end array-data

    :array_4
    .array-data 4
        -0x10100a0
        0x101009e
    .end array-data

    :array_5
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data
.end method

.method public setDrawableCheckedImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p2, :cond_0

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p2, p7, p8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, p1, p7, p8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, p3, p7, p8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p4, :cond_3

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    invoke-virtual {p0, p4, p7, p8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p5, :cond_4

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    invoke-virtual {p0, p5, p7, p8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz p6, :cond_5

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    invoke-virtual {p0, p6, p7, p8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_5
    if-eqz p1, :cond_6

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    invoke-virtual {p0, p1, p7, p8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_6
    if-eqz p2, :cond_7

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    invoke-virtual {p0, p2, p7, p8}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_7
    return-object v0

    :array_0
    .array-data 4
        0x10100a0
        -0x101009c
        -0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        -0x10100a0
        -0x101009c
        -0x10100a7
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x10100a0
        0x101009c
        -0x10100a7
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        -0x10100a0
        0x101009c
        -0x10100a7
        0x101009e
    .end array-data

    :array_4
    .array-data 4
        0x10100a0
        0x10100a7
        0x101009e
    .end array-data

    :array_5
    .array-data 4
        -0x10100a0
        0x10100a7
        0x101009e
    .end array-data

    :array_6
    .array-data 4
        -0x10100a0
        -0x10100a7
        0x101009e
    .end array-data

    :array_7
    .array-data 4
        0x10100a0
        -0x10100a7
        0x101009e
    .end array-data
.end method

.method public setDrawableCheckedImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p2, :cond_0

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p2, p7, p8, p9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, p1, p7, p8, p9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, p3, p7, p8, p9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p4, :cond_3

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    invoke-virtual {p0, p4, p7, p8, p9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p5, :cond_4

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    invoke-virtual {p0, p5, p7, p8, p9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz p6, :cond_5

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    invoke-virtual {p0, p6, p7, p8, p9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_5
    if-eqz p1, :cond_6

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    invoke-virtual {p0, p1, p7, p8, p9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_6
    if-eqz p2, :cond_7

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    invoke-virtual {p0, p2, p7, p8, p9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_7
    return-object v0

    :array_0
    .array-data 4
        0x10100a0
        -0x101009c
        -0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        -0x10100a0
        -0x101009c
        -0x10100a7
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x10100a0
        0x101009c
        -0x10100a7
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        -0x10100a0
        0x101009c
        -0x10100a7
        0x101009e
    .end array-data

    :array_4
    .array-data 4
        0x10100a0
        0x10100a7
        0x101009e
    .end array-data

    :array_5
    .array-data 4
        -0x10100a0
        0x10100a7
        0x101009e
    .end array-data

    :array_6
    .array-data 4
        -0x10100a0
        -0x10100a7
        0x101009e
    .end array-data

    :array_7
    .array-data 4
        0x10100a0
        -0x10100a7
        0x101009e
    .end array-data
.end method

.method public setDrawableDimImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {p0, p2, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-virtual {p0, p3, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p4, :cond_3

    new-array v1, v4, [I

    const v2, -0x101009e

    aput v2, v1, v3

    invoke-virtual {p0, p4, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a1
        -0x101009c
        0x101009e
    .end array-data
.end method

.method public setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    if-nez v4, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mCustom_imagepath:Ljava/lang/String;

    const-string v5, "spen_sdk_resource_custom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mContextResources:Landroid/content/res/Resources;

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    const-string v5, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v4, "SPenUtilImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDrawableImg - can not found image="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mContextResources:Landroid/content/res/Resources;

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "SPenUtilImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is occurred with drawable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    const-string v5, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v4, "SPenUtilImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDrawableImg - CAN NOT found image="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v3, "SPenUtilImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is occurred with drawable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    move-object v6, v0

    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    const-string v1, "spen_sdk_resource_custom"

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mCustom_imagepath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mContextResources:Landroid/content/res/Resources;

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    const-string v3, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "SPenUtilImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDrawableImg : can not found image="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->resizeImage(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mContextResources:Landroid/content/res/Resources;

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->resizeImage(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "SPenUtilImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is occurred with drawable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    const-string v3, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "SPenUtilImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDrawableImg : CAN NOT found image="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->resizeImage(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const-string v0, "SPenUtilImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is occurred with drawable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    move-object v6, v0

    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mCustom_imagepath:Ljava/lang/String;

    const-string v3, "spen_sdk_resource_custom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mContextResources:Landroid/content/res/Resources;

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    const-string v3, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move-object v6, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->resizeImage(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mContextResources:Landroid/content/res/Resources;

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->resizeImage(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "SPenUtilImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is occurred with drawable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    const-string v3, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    move-object v6, v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkResources:Landroid/content/res/Resources;

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->resizeImage(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v0, "SPenUtilImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is occurred with drawable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public setDrawableSelectColor(III)Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v4, 0x2

    new-array v0, v4, [I

    const v4, -0x10100a7

    aput v4, v0, v5

    const v4, -0x10100a1

    aput v4, v0, v6

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v6, [I

    const v4, 0x10100a1

    aput v4, v2, v5

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public setDrawableSelectImg(Ljava/lang/String;III)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p4, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a1

    aput v4, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v1

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a1
        -0x101009c
    .end array-data
.end method

.method public setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p2, :cond_3

    new-array v1, v4, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a1
        -0x101009c
    .end array-data
.end method

.method public setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, p4, p5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {p0, p2, p4, p5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-virtual {p0, p3, p4, p5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p2, :cond_3

    new-array v1, v4, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-virtual {p0, p2, p4, p5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a1
        -0x101009c
    .end array-data
.end method

.method public setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p2, :cond_3

    new-array v1, v4, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a1
        -0x101009c
    .end array-data
.end method

.method public setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    const/4 v5, 0x3

    new-array v3, v5, [I

    const v5, -0x10100a7

    aput v5, v3, v7

    const v5, -0x10100a1

    aput v5, v3, v8

    const/4 v5, 0x2

    const v6, -0x101009c

    aput v6, v3, v5

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p3, :cond_1

    new-array v0, v8, [I

    const v5, 0x101009c

    aput v5, v0, v7

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p2, :cond_2

    new-array v2, v8, [I

    const v5, 0x10100a7

    aput v5, v2, v7

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p4, :cond_3

    new-array v1, v8, [I

    const v5, 0x10100a1

    aput v5, v1, v7

    invoke-virtual {p0, p4}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    return-object v4
.end method

.method public setDrawableSelectedFocusImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p4, :cond_3

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, p4}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p2, :cond_4

    new-array v1, v4, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    return-object v0

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a1
        -0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x10100a1
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        -0x10100a1
    .end array-data
.end method

.method public setDrawableSelectedFocusImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {p0, p2, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, p3, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p4, :cond_3

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, p4, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p2, :cond_4

    new-array v1, v4, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-virtual {p0, p2, p5, p6}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    return-object v0

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a1
        -0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x10100a1
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        -0x10100a1
    .end array-data
.end method

.method public setSprImageViewDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getSprDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSprImageViewDrawable(Landroid/widget/ImageView;Ljava/lang/String;II)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getSprDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    int-to-float v5, p3

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v4

    int-to-float v5, p4

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v6, v6, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSprViewBackground(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getSprDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSprViewBackground(Landroid/view/View;Ljava/lang/String;II)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getSprDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    int-to-float v5, p3

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v4

    int-to-float v5, p4

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v6, v6, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mDrawableContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkVersion:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public unbindDrawables(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->mSdkVersion:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_2
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-nez v1, :cond_9

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_5
    :goto_3
    instance-of v1, p1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    instance-of v1, p1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_9
    check-cast p1, Landroid/widget/AdapterView;

    invoke-virtual {p1, v3}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    const/4 p1, 0x0

    goto :goto_3
.end method
