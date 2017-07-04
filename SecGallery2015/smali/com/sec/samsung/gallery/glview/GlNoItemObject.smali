.class public Lcom/sec/samsung/gallery/glview/GlNoItemObject;
.super Lcom/sec/android/gallery3d/glcore/GlObject;
.source "GlNoItemObject.java"


# static fields
.field private static final NO_ITEM_DESCRIPTION_TEXT:I = 0x1

.field private static final NO_ITEM_TEXT:I = 0x0

.field public static final TYPE_DESCRIPTION_OFF:I = 0x0

.field public static final TYPE_NO_ITEM:I = 0x2

.field public static final TYPE_NO_STORY:I = 0x1


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

.field private final mContext:Landroid/content/Context;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mHeightSize:F

.field private mHeightViewRatio:F

.field private final mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private final mResources:Landroid/content/res/Resources;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mHeightSize:F

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mContext:Landroid/content/Context;

    move-object v0, p2

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->resetAttributes()V

    return-void
.end method

.method private drawNoEventDescriptionView(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/glcore/GlTextView;)V
    .locals 16

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b01cd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mContext:Landroid/content/Context;

    const v5, 0x7f100181

    invoke-static {v3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b033b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0339

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_2
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->getNavigationBarBottomMargin()I

    move-result v3

    add-int/2addr v9, v3

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mViewWidth:I

    mul-int/lit8 v5, v10, 0x2

    sub-int v2, v3, v5

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    if-eqz v12, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v14, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNoEventType:I

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0156

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    int-to-float v3, v11

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;ZFZ)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v12

    const/4 v3, 0x2

    const/4 v5, 0x3

    invoke-virtual {v12, v3, v5}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v5, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v3

    sub-int/2addr v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v3

    sub-int v3, v5, v3

    div-int/lit8 v13, v3, 0x2

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v5

    add-int v15, v3, v5

    if-le v15, v13, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sub-int v7, v15, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    :cond_5
    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v3, v5, v6, v9}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mHeightSize:F

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b033a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0338

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0157

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_8
    add-int v3, v9, v15

    if-le v3, v13, :cond_5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int v7, v9, v15

    sub-int/2addr v7, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNavigationBarBottomMargin()I
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v0

    :cond_1
    return v0
.end method

.method private initNoItemTextObject()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0b01d2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mContext:Landroid/content/Context;

    const v9, 0x7f100183

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    int-to-float v8, v6

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mHeightSize:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsEventView:Z

    if-eqz v3, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a015d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v7, :cond_4

    int-to-float v8, v6

    invoke-static {v4, v8, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v7

    int-to-float v8, v6

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setTextSize(F)V

    invoke-virtual {v7, v12, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v2, v7, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_1
    if-eqz v3, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {p0, v2, v7}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->drawNoEventDescriptionView(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/glcore/GlTextView;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mHeightSize:F

    invoke-virtual {p0, v8, v9}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->setSize(FF)V

    invoke-virtual {p0, v10, v10, v10}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->setPos(FFF)V

    iget v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mHeightSize:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mHeightViewRatio:F

    div-float/2addr v8, v9

    float-to-int v1, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v9, v9, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    invoke-virtual {v8, v9, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a015c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a015e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isLandscapeMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsEventView:Z

    if-eqz v2, :cond_0

    const-string/jumbo v0, " "

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNoEventType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a015d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0156

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a015e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetAttributes()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mHeightViewRatio:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->mViewWidth:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->initNoItemTextObject()V

    return-void
.end method
