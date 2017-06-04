.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.source "PositionControllerChannelView.java"


# static fields
.field static GRID_COLCNT_LAND:[I

.field static GRID_COLCNT_PORT:[I

.field private static final GRID_THM_TYPES:[I


# instance fields
.field private EVENTVIEW_THUMBNAIL_HEIGHT_RATIO_L:F

.field private EVENTVIEW_THUMBNAIL_HEIGHT_RATIO_P:F

.field private EVENTVIEW_TITLE_BUTTON1_RATIO_L:F

.field private EVENTVIEW_TITLE_BUTTON1_RATIO_P:F

.field private EVENTVIEW_TITLE_BUTTON2_RATIO_L:F

.field private EVENTVIEW_TITLE_BUTTON2_RATIO_P:F

.field private EVENTVIEW_TITLE_BUTTON_GAP_RATIO_L:F

.field private EVENTVIEW_TITLE_BUTTON_GAP_RATIO_P:F

.field private final FEATURE_USE_CHANNEL_DREAM_TABLET_GUI:Z

.field private final FEATURE_USE_EVENT_NOTIFICATION_VIEW:Z

.field private final FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

.field final mIsTablet:Z

.field private mTitleButtonBottomMargin:I

.field private mTitleButtonGap:I

.field private mTitleButtonRighMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_THM_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;-><init>()V

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonRighMargin:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonBottomMargin:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonGap:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mIsTablet:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_EVENT_NOTIFICATION_VIEW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewTabletGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_CHANNEL_DREAM_TABLET_GUI:Z

    return-void
.end method

.method private findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 3

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupVGap:F

    sub-float v0, v1, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    return-object v1
.end method

.method private getResource(I)F
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getThumbSizeType(I)I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_THM_TYPES:[I

    aget v0, v0, p0

    return v0
.end method

.method private getTopMargin()I
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_CHANNEL_DREAM_TABLET_GUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0505

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private updateAcceptButton(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V
    .locals 16

    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v1, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    move/from16 v0, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    const/16 v13, 0xa

    invoke-virtual {v1, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setObjective(I)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v14, 0x2

    invoke-virtual {v13, v1, v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v13, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v14

    invoke-virtual {v13, v2, v14, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getTitleButtonView(ILcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v7, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v13, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsW:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON1_RATIO_P:F

    mul-float/2addr v13, v14

    float-to-int v8, v13

    :goto_1
    if-eq v10, v8, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v13, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v14

    invoke-virtual {v13, v2, v14, v1, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getTitleButtonView(ILcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/Object;I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v7, v4

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v10

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convY(I)F

    move-result v5

    invoke-virtual {v1, v10, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    invoke-virtual {v1, v9, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerAcceptClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v1, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    invoke-virtual {v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonRighMargin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v14

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v11, v13, v14

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonBottomMargin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convY(I)F

    move-result v14

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v5, v14

    sub-float/2addr v13, v14

    neg-float v12, v13

    sget-boolean v13, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v13, :cond_5

    neg-float v13, v11

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v12, v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v13, 0x1

    :goto_4
    invoke-virtual {v1, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    if-nez v3, :cond_7

    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v1, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsW:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON1_RATIO_L:F

    mul-float/2addr v13, v14

    float-to-int v8, v13

    goto/16 :goto_1

    :cond_4
    move v10, v8

    goto/16 :goto_2

    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    goto :goto_5
.end method

.method private updateDeclineButton(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V
    .locals 19

    const/16 v16, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    move/from16 v0, p2

    iput v0, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    const/16 v16, 0xb

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setObjective(I)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getTitleButtonView(ILcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v9, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v13

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsW:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON2_RATIO_P:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsW:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON_GAP_RATIO_P:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v10, v0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonGap:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v0, v10, :cond_2

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonGap:I

    :cond_2
    if-eq v13, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1, v5, v11}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getTitleButtonView(ILcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/Object;I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object v9, v6

    check-cast v9, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v13

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convY(I)F

    move-result v7

    invoke-virtual {v5, v13, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    invoke-virtual {v5, v12, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerDeclineClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    const/16 v16, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    if-eqz v2, :cond_6

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonRighMargin:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v17

    sub-float v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonGap:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v17

    sub-float v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v14, v16, v17

    :goto_3
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonBottomMargin:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convY(I)F

    move-result v17

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, v7, v17

    sub-float v16, v16, v17

    move/from16 v0, v16

    neg-float v15, v0

    sget-boolean v16, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v16, :cond_7

    neg-float v0, v14

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v15, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v16, 0x1

    :goto_5
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    if-nez v4, :cond_9

    const/16 v16, 0x1

    :goto_6
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsW:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON2_RATIO_L:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsW:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON_GAP_RATIO_L:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v10, v0

    goto/16 :goto_1

    :cond_5
    move v13, v11

    goto/16 :goto_2

    :cond_6
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonRighMargin:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonGap:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v17

    sub-float v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v14, v16, v17

    goto/16 :goto_3

    :cond_7
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_4

    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_6
.end method

.method private updateTitleButtonBorder(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V
    .locals 7

    const/4 v6, 0x2

    const/16 v5, 0xd

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    if-eqz p2, :cond_3

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    if-nez v0, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v4, 0x7f020061

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v2, v0, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    invoke-virtual {p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v4, 0x7f02005f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    invoke-virtual {p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_2
.end method


# virtual methods
.method applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v3, :cond_3

    move v2, v4

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    invoke-direct {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;-><init>()V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemW:F

    sub-float/2addr v5, v2

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemH:F

    invoke-virtual {v3, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderWidth(F)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getStrokeColor()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderColor(I)V

    :goto_1
    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updatePos(I)V

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAlbumRoundRadius:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAlbumRoundRadius:F

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRoundRadius(F)V

    :cond_1
    invoke-virtual {p1, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEmptyFill(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    iput v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mId:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    iput v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSelected(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDisabled:Z

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDimState(Z)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateBorder(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b0009

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    goto :goto_1

    :cond_5
    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_2
.end method

.method calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 11

    iget-object v6, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    iget-object v7, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget-object v5, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    iget-object v3, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    iget v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    iget v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidW:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemGapW:F

    add-int/lit8 v10, v4, -0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    int-to-float v9, v4

    div-float v2, v8, v9

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_THUMBNAIL_HEIGHT_RATIO_P:F

    mul-float v1, v2, v8

    :goto_0
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_2

    move v0, v1

    :goto_1
    iput v0, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    const/4 v8, 0x0

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    neg-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    sub-float/2addr v8, v9

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    iget v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lez v8, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v6, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x0

    aput v2, v5, v8

    const/4 v8, 0x0

    aput v1, v3, v8

    const/4 v8, 0x0

    aget v8, v6, v8

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    neg-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderY:F

    const/4 v8, 0x0

    aget v8, v5, v8

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    const/4 v8, 0x0

    aget v8, v3, v8

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    add-float/2addr v8, v9

    iput v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    :cond_0
    iget v8, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupVGap:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    add-float/2addr v8, v9

    return v8

    :cond_1
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_THUMBNAIL_HEIGHT_RATIO_L:F

    mul-float v1, v2, v8

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemGapH:F

    add-float v0, v1, v8

    goto :goto_1
.end method

.method fitToLine()V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v5, v0

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v2, v5, :cond_0

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float v3, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollable:F

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    sub-float v4, v3, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidH:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollable:F

    add-float/2addr v5, v6

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidH:F

    sub-float v4, v3, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method public getCenteredScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    add-float v0, v1, v2

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollableMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollableMax:F

    goto :goto_0
.end method

.method getStrokeColor()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f100000

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a050f

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getResource(I)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_THUMBNAIL_HEIGHT_RATIO_P:F

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0a050e

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getResource(I)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_THUMBNAIL_HEIGHT_RATIO_L:F

    const v0, 0x7f0a0500

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getResource(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON1_RATIO_P:F

    const v0, 0x7f0a04ff

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getResource(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON1_RATIO_L:F

    const v0, 0x7f0a0502

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getResource(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON2_RATIO_P:F

    const v0, 0x7f0a0501

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getResource(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON2_RATIO_L:F

    const v0, 0x7f0a0504

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getResource(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON_GAP_RATIO_P:F

    const v0, 0x7f0a0503

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getResource(I)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_TITLE_BUTTON_GAP_RATIO_L:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0a04fe

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getResource(I)F

    move-result v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0a04fd

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getResource(I)F

    move-result v0

    goto :goto_1
.end method

.method public moveTo(I)Z
    .locals 13

    const/4 v12, 0x5

    const/4 v11, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ne p1, v12, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v7, :cond_2

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v7

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    if-ge v7, v10, :cond_2

    const/4 p1, 0x2

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    if-nez v7, :cond_6

    const/4 v7, 0x4

    if-ne p1, v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v8, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGrpActiveStart:I

    iput v10, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 p1, 0x0

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ltz v7, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eq v4, v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {p0, v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->fitToLine()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v5, :cond_4

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v5

    :cond_4
    invoke-virtual {p0, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->setAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_5
    move v9, v8

    goto :goto_0

    :cond_6
    if-eq p1, v11, :cond_7

    if-ne p1, v12, :cond_3

    :cond_7
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v7, v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-eqz v7, :cond_9

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v6, :cond_8

    invoke-virtual {p0, v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_8
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v9, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v8, -0x1

    iput v8, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    goto/16 :goto_0

    :cond_9
    if-ne p1, v11, :cond_c

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v7, v7

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v7, v9

    iget v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    :cond_a
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ge v7, v0, :cond_b

    move v2, v8

    :goto_2
    goto :goto_1

    :cond_b
    move v2, v9

    goto :goto_2

    :cond_c
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 10

    const v9, 0x3f7c28f6    # 0.985f

    const/4 v8, 0x1

    const/4 v1, 0x0

    iput-boolean v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mUseParentThumbTouchAnim:Z

    invoke-virtual {p1, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setThumbPressScale(F)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerPenSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPenSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerThumbLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setLongClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;)V

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iput-boolean v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    iput-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_0
    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setLongClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;)V

    invoke-virtual {v2, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iput-boolean v8, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    invoke-virtual {v2, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setThumbPressScale(F)V

    iput-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_1
    return-void
.end method

.method public resetAttributes(Z)V
    .locals 11

    const v10, 0x7f0b00a8

    const/4 v6, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b00b0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleHeightPixel:I

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMarginLeftPixel:I

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMarginRightPixel:I

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b02f5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_2
    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemGapWPixel:I

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b02f6

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_3
    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemGapHPixel:I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupVGapPixel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonRighMargin:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b00a7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonBottomMargin:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b001f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleButtonGap:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getTopMargin()I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mExtraMarginTopPixel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v4

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mExtraMarginTopPixel:I

    add-int/2addr v4, v7

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getNotificationHeight()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v7

    add-int/2addr v4, v7

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMarginTopPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mExtraMarginTopPixel:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMarginBottomPixel:I

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->resetValues(Z)V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v4, :cond_8

    move v4, v6

    :goto_4
    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_COLCNT_PORT:[I

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_COLCNT_PORT:[I

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0f0007

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    sput-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_COLCNT_PORT:[I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0f0008

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    sput-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_COLCNT_LAND:[I

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_COLCNT_PORT:[I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mLevel:I

    aget v4, v4, v7

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    :cond_2
    :goto_5
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidW:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemGapW:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemW:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemW:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_THUMBNAIL_HEIGHT_RATIO_P:F

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemH:F

    :goto_6
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemW:F

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemW:F

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->rConvX(F)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleWidthPixel:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleHeightPixel:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsH:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mSpaceWidth:F

    neg-float v4, v4

    div-float/2addr v4, v9

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMargLeft:F

    add-float/2addr v4, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemW:F

    div-float/2addr v7, v9

    add-float/2addr v4, v7

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemSx:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mSpaceHeight:F

    div-float/2addr v4, v9

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMargTop:F

    sub-float/2addr v4, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemH:F

    sub-float/2addr v4, v7

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemSy:F

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemH:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v8, 0x7f0b00f3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convY(I)F

    move-result v7

    add-float/2addr v4, v7

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mCheckVMargin:F

    :cond_3
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v4, :cond_b

    :goto_7
    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAlbumRoundRadius:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-boolean v5, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    goto :goto_8

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b001b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b001a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b0018

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_2

    :cond_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v7, 0x7f0b0019

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_3

    :cond_8
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleHeightPixel:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convY(I)F

    move-result v4

    goto/16 :goto_4

    :cond_9
    sget-object v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_COLCNT_LAND:[I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mLevel:I

    aget v4, v4, v7

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v4

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    int-to-float v7, v7

    div-float v1, v4, v7

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidW:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidW:F

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    goto/16 :goto_5

    :cond_a
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemW:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->EVENTVIEW_THUMBNAIL_HEIGHT_RATIO_L:F

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemH:F

    goto/16 :goto_6

    :cond_b
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v6, 0x7f0b0002

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v4

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAlbumTextureRadiusRatio:F

    mul-float/2addr v6, v4

    goto/16 :goto_7

    :cond_c
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollBottomMarginPixel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollSideMarginPixel:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollThumbHeightPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollBottomMarginPixel:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollBottomMargin:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollSideMarginPixel:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollSideMargin:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollThumbHeightPixel:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollThumbHeight:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b0504

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convY(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollThumbShadowHeight:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v6, 0x7f0b00b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mCreateBtnGap:I

    return-void
.end method

.method public resetPosition()V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupCount:I

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v4, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v2

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    rem-int v4, v1, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    :cond_1
    add-float/2addr v3, v2

    :cond_2
    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemW:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemGapW:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    rem-int v5, v1, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemW:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemGapW:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    rem-int v5, v1, v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mMargineLeft:F

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCreateEventFloatingButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mCreateBtnGap:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convY(I)F

    move-result v4

    add-float/2addr v3, v4

    :cond_5
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidH:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_6

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollableMax:F

    :goto_2
    return-void

    :cond_6
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidH:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollableMax:F

    goto :goto_2
.end method

.method resetValues(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetValues(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_COLCNT_PORT:[I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0f0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_COLCNT_LAND:[I

    return-void
.end method

.method public setDualScreenFocusVisibility(II)V
    .locals 3

    if-eq p1, p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    if-ne v2, p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusBorderVisible(Z)V

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateBorder(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mBucketId:I

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusBorderVisible(Z)V

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateBorder(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setFocusBorderVisibleTitleButton1(II)V
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    invoke-direct {p0, v3, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateTitleButtonBorder(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {p2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    invoke-direct {p0, v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateTitleButtonBorder(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setFocusBorderVisibleTitleButton2(II)V
    .locals 11

    const/16 v10, 0xb

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    invoke-direct {p0, v3, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateTitleButtonBorder(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {p2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    invoke-direct {p0, v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateTitleButtonBorder(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setTitleFocusBorderVisible(II)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateBorder(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {p2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateBorder(I)V

    :cond_1
    return-void
.end method

.method public setToCurrentCtrl()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->GRID_THM_TYPES:[I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mLevel:I

    aget v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    return-void
.end method

.method public setVisibleRange()V
    .locals 15

    const/4 v14, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupCount:I

    add-int/lit8 v8, v11, -0x1

    move v7, v8

    move v5, v8

    move v4, v8

    move v3, v8

    const/4 v2, 0x0

    :goto_0
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupCount:I

    if-ge v2, v11, :cond_3

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v11, v2

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollable:F

    sub-float v9, v11, v12

    if-ge v2, v4, :cond_0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mExtraTop:F

    cmpg-float v11, v11, v9

    if-gtz v11, :cond_0

    move v4, v2

    :cond_0
    if-ge v2, v7, :cond_1

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMargTop:F

    neg-float v11, v11

    cmpg-float v11, v11, v9

    if-gtz v11, :cond_1

    move v7, v2

    :cond_1
    if-ne v5, v8, :cond_2

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidH:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMargBtm:F

    add-float/2addr v11, v12

    cmpl-float v11, v9, v11

    if-ltz v11, :cond_2

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v11, :cond_4

    iget-boolean v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mIsTablet:Z

    if-eqz v11, :cond_4

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    add-int/2addr v11, v2

    add-int/lit8 v5, v11, 0x1

    :goto_1
    if-le v5, v8, :cond_2

    move v5, v8

    :cond_2
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mExtraBtm:F

    cmpl-float v11, v9, v11

    if-ltz v11, :cond_5

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    add-int/2addr v11, v2

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupCount:I

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v11, v7

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollable:F

    sub-float v0, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMargTop:F

    neg-float v11, v11

    cmpl-float v11, v0, v11

    if-lez v11, :cond_6

    const/4 v6, 0x0

    :goto_2
    invoke-static {v7, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGrpActiveStart:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v11, v5

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollable:F

    sub-float v0, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidH:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMargBtm:F

    add-float/2addr v11, v12

    cmpg-float v11, v0, v11

    if-gtz v11, :cond_8

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_3
    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGrpActiveEnd:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v11, v4

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollable:F

    sub-float v0, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mExtraTop:F

    cmpl-float v11, v0, v11

    if-lez v11, :cond_b

    const/4 v6, 0x0

    :goto_4
    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGrpContentStart:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v11, v3

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mScrollable:F

    sub-float v0, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mExtraBtm:F

    cmpg-float v11, v0, v11

    if-gtz v11, :cond_d

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_5
    invoke-static {v3, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGrpContentEnd:I

    return-void

    :cond_4
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    add-int v5, v2, v11

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMargTop:F

    add-float/2addr v11, v0

    neg-float v10, v11

    cmpg-float v11, v10, v14

    if-gtz v11, :cond_7

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    add-float/2addr v11, v12

    div-float v11, v10, v11

    float-to-int v6, v11

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v6, v11

    goto :goto_2

    :cond_8
    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mValidH:F

    sub-float v12, v0, v12

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mMargBtm:F

    sub-float/2addr v12, v13

    sub-float v10, v11, v12

    cmpg-float v11, v10, v14

    if-gtz v11, :cond_9

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v11, :cond_a

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v11, v10, v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    :goto_6
    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v11, v6

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_3

    :cond_a
    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v11, v10, v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    add-int/lit8 v6, v11, 0x1

    goto :goto_6

    :cond_b
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mExtraTop:F

    sub-float v10, v11, v0

    cmpg-float v11, v10, v14

    if-gtz v11, :cond_c

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_c
    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v11, v10, v11

    float-to-int v6, v11

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v6, v11

    goto/16 :goto_4

    :cond_d
    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mExtraBtm:F

    sub-float v12, v0, v12

    sub-float v10, v11, v12

    cmpg-float v11, v10, v14

    if-gtz v11, :cond_e

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_e
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v11, :cond_f

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v11, v10, v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    :goto_7
    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    mul-int/2addr v11, v6

    iget v12, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_5

    :cond_f
    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    div-float v11, v10, v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    add-int/lit8 v6, v11, 0x1

    goto :goto_7
.end method

.method protected startDecodeThread()V
    .locals 7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v4, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGrpActiveStart:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGrpActiveEnd:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    move v1, v5

    :goto_0
    if-gt v1, v0, :cond_1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->thumbActivated(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method thumbActivated(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 8

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnscroll:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v3, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v3, v1

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v4, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v4, v4, v1

    iget-object v5, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getCanvasManager()Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    invoke-virtual {v3, v5, v6, v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->initializeItems(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    goto :goto_0
.end method

.method protected thumbDeactivate(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 4

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mEventItemPositions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->cancelDecodeTask(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V

    :cond_0
    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->removeUploadingIcon()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->removeChannelViewHLPlayIcon()V

    :cond_1
    return-void
.end method

.method updateBorder(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 12

    const/16 v11, 0x9

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iget v10, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v10}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v10

    aget-object v6, v9, v10

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v3, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    iget v4, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderY:F

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->rConvX(F)I

    move-result v8

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->rConvY(F)I

    move-result v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mResource:Landroid/content/res/Resources;

    const v10, 0x7f0b0046

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v5, v9, v10

    if-nez v1, :cond_4

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    invoke-virtual {v1, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setObjective(I)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v9, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v9, v10, v8, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v1, v3, v4, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget v9, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    add-float/2addr v9, v5

    iget v10, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    add-float/2addr v10, v5

    invoke-virtual {v1, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v9, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsW:I

    if-eq v9, v10, :cond_2

    invoke-virtual {v1, v8, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    goto :goto_1
.end method

.method public updateEventTitle(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    invoke-interface {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;->updateTitle(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    :cond_1
    return-void
.end method

.method updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v2

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v1, v0

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    add-int/2addr v0, v1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    sub-int v1, v0, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroupLineCount:I

    sub-int/2addr v0, v1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateShareIcon(III)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateUploadingIcon(III)V

    goto :goto_0
.end method

.method protected updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 16

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v14}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v2

    invoke-static {v14}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v1, :cond_0

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v1, v1

    if-lt v2, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0b0009

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->convX(I)F

    move-result v15

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v13, v1, v2

    iget v1, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v3, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v4, v4, v3

    iput v4, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v4, v4, v3

    iput v4, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    iput-boolean v4, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mDisplaySelectedCount:Z

    iput-boolean v4, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v4, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    const/4 v4, -0x1

    iput v4, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mEventType:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemW:F

    sub-float/2addr v1, v15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemH:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    neg-int v1, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_EVENT_NOTIFICATION_VIEW:Z

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mEventType:I

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v4

    if-eq v1, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mEventType:I

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_7

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemH:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->rConvY(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v9, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleW:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemH:F

    add-float/2addr v4, v5

    invoke-virtual {v9, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setExpandedAlbumTitle(Z)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v6, -0x1

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move v5, v2

    invoke-virtual/range {v4 .. v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_EVENT_NOTIFICATION_VIEW:Z

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mEventType:I

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v4

    if-eq v1, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mEventType:I

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_9

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateAcceptButton(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->updateDeclineButton(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    :cond_6
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleCanvsH:I

    invoke-virtual {v9, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mItemH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    add-float/2addr v4, v5

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setExpandedAlbumTitle(Z)V

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleW:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->mTitleH:F

    invoke-virtual {v9, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_4

    :cond_9
    const/16 v1, 0xa

    invoke-virtual {v9, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v10

    const/16 v1, 0xb

    invoke-virtual {v9, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v11

    if-eqz v10, :cond_6

    if-eqz v11, :cond_6

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    invoke-virtual {v9, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    goto :goto_3
.end method
