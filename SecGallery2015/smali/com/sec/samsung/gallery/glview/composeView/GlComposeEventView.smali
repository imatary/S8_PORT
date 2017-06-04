.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.source "GlComposeEventView.java"


# static fields
.field private static final CMD_SELECT_ALBUM:I = 0x65


# instance fields
.field private final mComposeEventViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

.field final mListenerHighlightVideoClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field final mListenerMapViewClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mMultiSelectorEventViewModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

.field private mNeedSetMode:Z

.field private mPressed:Z

.field private mScrollViFactor:I

.field private mValidView:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPressed:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mNeedSetMode:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mScrollViFactor:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mListenerHighlightVideoClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mListenerMapViewClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mComposeEventViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mMultiSelectorEventViewModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    return-void
.end method

.method private handleSelectAlbum(II)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->playSoundResource(I)V

    :cond_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getVisibleScrollDelta(F)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getValidScroll(F)F

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setScroll(FZ)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocused(IZ)V

    goto :goto_0
.end method

.method private moveTexCoords(F)V
    .locals 8

    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v4, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRotation:I

    invoke-virtual {v2, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMovingTexCoords(FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float/2addr v7, p1

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mScrollViFactor:I

    div-int/2addr v6, v7

    int-to-float v0, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setValidView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mValidView:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mValidView:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mValidView:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method createMultiSelector(Z)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorEventView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mMultiSelectorEventViewModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorEventView;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;)V

    return-object v0
.end method

.method public getItemWidth()F
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    return v0
.end method

.method protected onCreate(II)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->setValidView()V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onCreate(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mInitialCode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocused(IZ)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->isCheckMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mNeedSetMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mComposeEventViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mScrollViFactor:I

    return-void
.end method

.method public onFlingProcess(FF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->moveTexCoords(F)V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onFlingProcess(FF)V

    return-void
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v6, 0xa8

    if-eq p1, v6, :cond_0

    const/16 v6, 0xa9

    if-eq p1, v6, :cond_0

    and-int/lit16 v6, v1, 0x100

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->isScreenLocked()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x42

    if-eq p1, v6, :cond_3

    const/16 v6, 0x17

    if-ne p1, v6, :cond_5

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ltz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v6, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v6, v7, v8, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onMessageExtra(III)V
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->handleSelectAlbum(II)V

    :cond_0
    return-void
.end method

.method protected onMoved(II)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPressed:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPressed(II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eq p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPressed:Z

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onPressed(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPressed:Z

    goto :goto_0
.end method

.method protected onReleased(IIII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPressed:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resetLayout()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->setValidView()V

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mWidthSpace:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->setDimensionUtil(FI)V

    :cond_1
    return-void
.end method

.method protected resetScrollBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetScrollBar()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->setValidView()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mNeedSetMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mNeedSetMode:Z

    :cond_0
    return-void
.end method

.method protected updateSize(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateSize(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->show()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->update(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hide()V

    :cond_0
    return-void
.end method
