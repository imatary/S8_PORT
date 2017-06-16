.class public Lcom/samsung/android/sdk/pen/util/SpenControlUtil;
.super Ljava/lang/Object;
.source "SpenControlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    const-string v5, "dimen"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v5, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    const-string v5, "integer"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLinePath(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLineWidth(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getMultiLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "string"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static handleTouchUpEvent(Ljava/util/ArrayList;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static resizeImage(Landroid/content/Context;Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;
    .locals 26

    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v19

    if-nez v19, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/16 v20, 0x0

    const/4 v3, 0x6

    :try_start_0
    new-array v0, v3, [B

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-byte v3, v20, v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    aget-byte v3, v20, v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    aget-byte v3, v20, v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_2

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromResourceStream(Landroid/content/res/Resources;I)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4, v15, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, p3

    int-to-float v3, v0

    int-to-float v4, v5

    div-float v18, v3, v4

    move/from16 v0, p4

    int-to-float v3, v0

    int-to-float v4, v6

    div-float v17, v3, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v3, v22, v24

    if-lez v3, :cond_4

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v3, v22, v24

    if-lez v3, :cond_4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff199999999999aL    # 1.1

    cmpg-double v3, v22, v24

    if-gez v3, :cond_4

    move/from16 v0, v17

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

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    const/4 v2, 0x0

    if-eqz p5, :cond_5

    :try_start_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public static setConnectionMode(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V
    .locals 0

    return-void
.end method
