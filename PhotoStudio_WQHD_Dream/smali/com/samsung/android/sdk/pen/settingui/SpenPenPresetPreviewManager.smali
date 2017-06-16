.class public Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;
.super Ljava/lang/Object;
.source "SpenPenPresetPreviewManager.java"


# static fields
.field private static final DENSITY:F = 44.0f

.field private static final SCALE:F = 1.0f


# instance fields
.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private final mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private mLocalDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mPenPluginInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

.field private final mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v1, ""

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->initPenPlugin(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;-><init>(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mLocalDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private initPenPlugin(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPluginManager:Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;-><init>(Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getPresetPreview(Ljava/lang/String;IFLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mLocalDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float p3, p3, v4

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getIntValueAppliedDensity(F)I

    move-result v4

    move/from16 v0, p3

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v29

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v26, Landroid/graphics/Canvas;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v28

    const/4 v4, -0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_3

    const/16 v29, 0x0

    :cond_1
    :goto_1
    return-object v29

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mLocalDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const v4, 0x3f19999a    # 0.6f

    mul-float p3, p3, v4

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->loadPenPlugin(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    if-nez v4, :cond_4

    const/16 v29, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getAdvancedSetting()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    move/from16 v0, p3

    invoke-interface {v4, v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setSize(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    move/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setColor(I)V

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v8, v4, v5

    const-string v4, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setAdvancedSetting(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v8, v4, v5

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const-wide/16 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v7, p3, v4

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v24, v4, v7

    const-string v4, "Marker"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v7, 0x0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v6, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v4, v2

    move/from16 v10, p3

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v25

    invoke-interface {v4, v0, v5}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->recycle()V

    const-wide/16 v4, 0x5

    add-long v12, v2, v4

    const/4 v14, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v15, v24, v4

    const/high16 v17, 0x3f000000    # 0.5f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide v10, v2

    move/from16 v16, v8

    move/from16 v18, p3

    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v25

    invoke-interface {v4, v0, v5}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->recycle()V

    const-wide/16 v4, 0xa

    add-long v12, v2, v4

    const/4 v14, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide v10, v2

    move/from16 v15, v24

    move/from16 v16, v8

    move/from16 v18, p3

    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, v25

    invoke-interface {v4, v0, v5}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual/range {v25 .. v25}, Landroid/view/MotionEvent;->recycle()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mBitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string v4, "com.samsung.android.sdk.pen.pen.preload.Beautify"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/settingui/SpenPenPresetPreviewManager;->mPenPluginInfoList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setAdvancedSetting(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
