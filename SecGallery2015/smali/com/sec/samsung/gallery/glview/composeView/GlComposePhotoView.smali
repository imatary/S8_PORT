.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.source "GlComposePhotoView.java"


# static fields
.field private static final STATUS_ADD_TO_NEWALBUM:I = 0xb

.field public static final STATUS_EXPAND_CHANGE:I = 0xa

.field public static final STATUS_ITEM_MOVE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GlComposePhotoView"


# instance fields
.field private final mComposeViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

.field private final mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

.field private mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

.field private mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

.field private mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field mExpandable:Z

.field final mListenerDragDone:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;

.field mOriginExpanded:Z

.field mPressX:I

.field mPressY:I

.field mPressed:Z

.field private mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

.field mValidView:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mExpandable:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPressed:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOriginExpanded:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mListenerDragDone:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mComposeViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mSupportExpand:Z

    iput-object p5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setExpandValue(Z)V

    return-void
.end method

.method private isEnlargeAnimActive(F)Z
    .locals 4

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsJ1xlteModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mMode:I

    if-eq v2, v1, :cond_3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrlCurrent:I

    if-eq v2, v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrlCurrent:I

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDirectCopyFromSideSync:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v1, "startSideSyncDrag"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOnDragDropListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOnDragDropListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;->onDragDrop(I)Z

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPhotoLineCount:I

    goto :goto_0
.end method

.method public getPhotoCoverObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    return-object v0
.end method

.method public getRecycleBinTextObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    return-object v0
.end method

.method public isCoverScrollUp()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->isScrollUp()Z

    move-result v0

    goto :goto_0
.end method

.method public isDragAnimRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOriginExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOriginExpanded:Z

    return v0
.end method

.method protected onCreate(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setValidView()V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onCreate(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mComposeViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setExpanded(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsChannelPhotoView:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->setIsChannelPhotoView(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mContext:Landroid/content/Context;

    const v2, 0x7f100192

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->createCover(Landroid/graphics/Bitmap;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->moveToLast()V

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->setPhotoView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsRecycleBinView:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;->setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;->setExpanded(Z)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->resetLayout(FZ)V

    :cond_1
    new-instance v1, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onDestroy()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v4, 0xa8

    if-eq p1, v4, :cond_0

    const/16 v4, 0xa9

    if-eq p1, v4, :cond_0

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->isScreenLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const/16 v4, 0x42

    if-eq p1, v4, :cond_4

    const/16 v4, 0x17

    if-ne p1, v4, :cond_8

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    :cond_5
    if-nez v1, :cond_6

    move v2, v3

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setExpansionMode(Z)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mMode:I

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-interface {v4, v5, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->startEnlargeAnimation()V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-interface {v4, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v4, v5, v6, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0

    :cond_8
    const/16 v3, 0x43

    if-eq p1, v3, :cond_9

    const/16 v3, 0x70

    if-ne p1, v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    goto/16 :goto_0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onMessageExtra(III)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateCoverImage(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setVisibility(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method protected onMoved(II)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOnScaling:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPressed(II)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eq p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPressX:I

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPressY:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPressed:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mExpandable:Z

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onPressed(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPressed:Z

    goto :goto_0
.end method

.method protected onReleased(IIII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method protected onScale(Landroid/view/ScaleGestureDetector;)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mUseScaleCtrl:Z

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->checkIfIncorrectMode()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOnScaling:Z

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-boolean v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v13, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->setScale(F)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    iget v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScale:F

    mul-float v3, v13, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->isMinLevel()Z

    move-result v13

    if-eqz v13, :cond_3

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, v3, v13

    if-ltz v13, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPropagatedAnim:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPropagatedAnim:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->isRunning()Z

    move-result v13

    if-nez v13, :cond_0

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->isEnlargeAnimActive(F)Z

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v13}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->doScale(FFZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrlCurrent:I

    iput v15, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mToLevel:I

    iput v15, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mFromLevel:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    float-to-int v14, v4

    float-to-int v15, v5

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getFocusedObject(IIZ)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getObjectRect()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v6, v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v7, v13, v14

    new-instance v9, Landroid/graphics/Rect;

    sub-float v13, v4, v6

    float-to-int v13, v13

    sub-float v14, v5, v7

    float-to-int v14, v14

    add-float v15, v4, v6

    float-to-int v15, v15

    add-float v16, v5, v7

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v9, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v15, 0x0

    invoke-interface {v13, v14, v8, v15}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z

    goto/16 :goto_0

    :cond_5
    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v13, v11}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->setScale(F)I

    move-result v10

    if-eqz v10, :cond_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;->checkNotDisplayDecoViewOnScale()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setDecoviewsVisibility(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v3, v14, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->doScale(FFZ)Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOnScaling:Z

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    goto :goto_1
.end method

.method protected resetLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setValidView()V

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->resetLayout(FZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->resetLayout(FZ)V

    :cond_1
    return-void
.end method

.method public selectAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method

.method public setMode(IILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRenameInEventPhotoView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setTitleRippleEffect(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setTitleRippleEffect(Z)V

    goto :goto_0
.end method

.method public setOnCoverScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setOnCoverScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;)V

    goto :goto_0
.end method

.method public setOriginExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOriginExpanded:Z

    return-void
.end method

.method public setRemoveCheckAnim()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->setDefaultCheckStatus()V

    :cond_1
    return-void
.end method

.method public setRemoveDeleteAnim()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->cancelDeleteAnimation()V

    :cond_0
    return-void
.end method

.method setValidView()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mValidView:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mHeight:I

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mValidView:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mValidView:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mHeight:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setVisibleRangeForExtraObject()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setVisibleRange(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setVisibleRange(F)V

    :cond_1
    return-void
.end method

.method startEnlargeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsRecycleBinView:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_2
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startEnlargeAnimation()V

    goto :goto_0
.end method

.method startShrinkAnimation()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startShrinkAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mRecycleTextObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_0
.end method

.method protected updateSize(I)V
    .locals 4

    const-string/jumbo v1, "GlComposePhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateSize(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setVisibility(Z)V

    :cond_0
    return-void
.end method
