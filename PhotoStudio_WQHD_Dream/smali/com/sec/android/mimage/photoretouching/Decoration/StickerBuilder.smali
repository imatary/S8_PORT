.class public Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;
.super Ljava/lang/Object;
.source "StickerBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StickerBuilder"


# instance fields
.field private OrgObjectBmp:Landroid/graphics/Bitmap;

.field private info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->OrgObjectBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->OrgObjectBmp:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDensity()F
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method


# virtual methods
.method public getCoverBitmap(II[III)Landroid/graphics/Bitmap;
    .locals 20

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->OrgObjectBmp:Landroid/graphics/Bitmap;

    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p3

    array-length v4, v0

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    const/4 v4, 0x4

    new-array v11, v4, [I

    fill-array-data v11, :array_0

    const/4 v12, 0x1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p2

    invoke-static/range {v4 .. v12}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->runOutfocusInPortraitPreviewWithROI([III[IIII[II)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->OrgObjectBmp:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v7

    move/from16 v15, p4

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->OrgObjectBmp:Landroid/graphics/Bitmap;

    return-object v4

    :cond_1
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p3

    array-length v4, v0

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p2

    invoke-static {v0, v7, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyPixelize([I[IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->OrgObjectBmp:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v7

    move/from16 v15, p4

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getCoverData(II[III)[I
    .locals 9

    const/4 v8, 0x1

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    move-object v0, p3

    move v1, p4

    move v2, p5

    move v4, p4

    move v5, p5

    move v6, p2

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->runOutfocusInPortraitPreviewWithROI([III[IIII[II)I

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    if-ne p1, v8, :cond_0

    invoke-static {p3, v3, p4, p5, p2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->applyPixelize([I[IIII)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getStickerBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 23

    const/16 v16, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const v20, 0x7f02064c

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/high16 v20, 0x43570000    # 215.0f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getDensity()F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v9, v0

    const/high16 v20, 0x42d00000    # 104.0f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getDensity()F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v8, v0

    const/high16 v20, 0x40e00000    # 7.0f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getDensity()F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v12, v0

    const/high16 v20, 0x40a00000    # 5.0f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getDensity()F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v12

    move/from16 v20, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v6, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->OrgObjectBmp:Landroid/graphics/Bitmap;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->OrgObjectBmp:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    return-object v20

    :cond_1
    const v20, 0x7f020069

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->info:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->info:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v9

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v8

    :goto_1
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_0

    :cond_2
    const/high16 v20, 0x42fc0000    # 126.0f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getDensity()F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v9, v0

    const/high16 v20, 0x42000000    # 32.0f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->getDensity()F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v8, v0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->isGif()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    :cond_5
    check-cast p1, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getItemRes()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    const-string v20, "drawable"

    move-object/from16 v0, v20

    invoke-virtual {v13, v11, v0, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v13, v10, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    :cond_7
    check-cast p1, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getItemRes()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    const-string v20, "drawable"

    move-object/from16 v0, v20

    invoke-virtual {v13, v11, v0, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-static {v13, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const/16 v16, 0x0

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    const-string v20, "StickerBuilder"

    const-string v21, "Unknown type @@"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEditTextInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerBuilder;->info:Ljava/util/ArrayList;

    return-void
.end method
