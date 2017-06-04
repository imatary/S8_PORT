.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeActionBar.java"


# static fields
.field static final AB_DELETE_ID:I = 0x4

.field static final AB_EDIT_ID:I = 0x2

.field static final AB_FLASH_ANNOTATE_ID:I = 0x1

.field static final AB_SHARE_ID:I = 0x3

.field private static final mBaseDividerId:I = 0x3e8


# instance fields
.field private mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

.field private mCurrentAbsoluteRightPosition:I

.field private mHoverEnter:Z

.field private mLeftMargin:I

.field private mNeedToLayoutActionBar:Z

.field private mRightMargin:I

.field private final mVisibilityMap:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mRightMargin:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mLeftMargin:I

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mHoverEnter:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mNeedToLayoutActionBar:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->removeAllAnimation()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mVisibilityMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private dispatchHoverEventInter(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/glview/GlButtonView;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getVisibleButtonsCount()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mVisibilityMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mVisibilityMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private setButtonPosition(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mRightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    const/4 v0, 0x5

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    invoke-virtual {p1, v2, v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->setMargin(IIII)V

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/GlButtonView;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->setButtonRightMargine(I)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    return-void
.end method

.method private setDividerPosition(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mLeftMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    invoke-virtual {p1, v2, v2, v0, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->setMargin(IIII)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    return-void
.end method


# virtual methods
.method public addActionBarItem(Lcom/sec/samsung/gallery/glview/GlButtonView;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mVisibilityMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setButtonPosition(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->checkPosIn(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mHoverEnter:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->getXlt()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->getYlt()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->dispatchHoverEventInter(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->getXlt()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->getYlt()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mHoverEnter:Z

    if-eqz v3, :cond_0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mHoverEnter:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->getXlt()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->getYlt()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->dispatchHoverEventInter(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->getXlt()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->getYlt()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0
.end method

.method protected onPressed(IIII)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public redrawActionBar()V
    .locals 7

    const/16 v6, 0x3e8

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mNeedToLayoutActionBar:Z

    if-eqz v4, :cond_4

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mNeedToLayoutActionBar:Z

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mCurrentAbsoluteRightPosition:I

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->getVisibleButtonsCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlView;->getId()I

    move-result v4

    if-ge v4, v6, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setButtonPosition(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlView;->getId()I

    move-result v4

    if-le v4, v6, :cond_0

    if-eqz v1, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setDividerPosition(Lcom/sec/android/gallery3d/glcore/GlView;)V

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method

.method public removeBGChildView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeAllChilds()V

    :cond_0
    return-void
.end method

.method public setBackGroundView(Lcom/sec/android/gallery3d/glcore/GlImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_0
.end method

.method public setButtonsMargin(II)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mLeftMargin:I

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mRightMargin:I

    return-void
.end method

.method public setItemVisibility(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mVisibilityMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mBackGroundView:Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/glcore/GlView;->setVisibility(I)V

    :cond_1
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->mNeedToLayoutActionBar:Z

    return-void
.end method
