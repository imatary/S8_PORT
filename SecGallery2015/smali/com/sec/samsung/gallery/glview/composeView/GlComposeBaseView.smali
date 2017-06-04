.class public abstract Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;
.super Lcom/sec/android/gallery3d/glcore/GlLayer;
.source "GlComposeBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLastCommentClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCommentCountClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeCountClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnUpdateChannelFloatingViewListerner;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnRefreshListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnExtendListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchRotateScrollListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnMovedListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;
    }
.end annotation


# static fields
.field static final DEF_DISTANCE:F = 800.0f

.field private static final DEF_FOV:F = 30.0f

.field public static final KEYPAD_TAB:I = 0x5

.field public static final LIST_MODE_NEWALBUM:I = 0x2

.field public static final LIST_MODE_NORMAL:I = 0x0

.field public static final LIST_MODE_REORDER_FROM_EDIT:I = 0x4

.field public static final LIST_MODE_REORDER_FROM_NORMAL:I = 0x3

.field public static final LIST_MODE_SELECT:I = 0x1

.field private static final MAX_GENERIC_MOTION:I = 0x4

.field public static final MOVE_DOWN:I = 0x4

.field public static final MOVE_LEFT:I = 0x1

.field public static final MOVE_RIGHT:I = 0x2

.field public static final MOVE_UP:I = 0x3

.field public static final OPTION_EASY_MODE:I = 0x100

.field public static final OPTION_HOVER_ALBUM:I = 0x40

.field public static final OPTION_HOVER_ITEM:I = 0x80

.field public static final OPTION_SHRINK:I = 0x10

.field public static final OPTION_SHRINK_ANIM:I = 0x20

.field public static final REORDER_FINISH:I = 0x1

.field public static final STATUS_COLUMN_COUNT:I = 0x1

.field public static final STATUS_REACHED_LEAST_ROW:I = 0x2

.field public static final STATUS_THM_LEVEL_CHANGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlComposeBaseView"


# instance fields
.field final mContext:Landroid/content/Context;

.field mMode:I

.field mNotificationClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;

.field mOnCommentCountClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCommentCountClickListener;

.field mOnDragDropListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;

.field mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

.field mOnExtendListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnExtendListener;

.field final mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

.field mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

.field mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

.field mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

.field mOnLastCommentClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLastCommentClickListener;

.field mOnLikeClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeClickListener;

.field mOnLikeCountClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeCountClickListener;

.field mOnLocationItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;

.field mOnMovedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnMovedListener;

.field mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

.field mOnRefreshListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnRefreshListener;

.field mOnSearchViewRotateScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchRotateScrollListener;

.field mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

.field mOnShrinkAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;

.field mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

.field mOnSwitchStateListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;

.field mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

.field final mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

.field mUpdateChannelFloatingListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnUpdateChannelFloatingViewListerner;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlLayer;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnExtendListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnExtendListener;

    const-string/jumbo v0, "GlComposeBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GlComposeBaseView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mMode:I

    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->setTabPosition(I)V

    return-void
.end method

.method private setDefaultDistance(FF)V
    .locals 6

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mFov:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mDistance:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    int-to-float v2, v2

    div-float v0, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mDistance:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mFov:F

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mHeightSpace:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mHeightSpace:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mWidthSpace:F

    goto :goto_0
.end method


# virtual methods
.method checkIfIncorrectMode()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract clearChildViewFocus(I)V
.end method

.method public getActionBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mMode:I

    return v0
.end method

.method public getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabViewHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckMode()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScreenLocked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGenericMotionCancel()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;->onGenericMotionCancel()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method onMessageExtra(III)V
    .locals 0

    return-void
.end method

.method onSetMode(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onSurfaceChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->resetLayout()V

    :cond_0
    return-void
.end method

.method public refreshCheckState()V
    .locals 0

    return-void
.end method

.method public refreshItem(I)V
    .locals 0

    return-void
.end method

.method resetLayout()V
    .locals 9

    const/4 v8, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v1, 0x44480000    # 800.0f

    const/16 v6, 0x10

    new-array v5, v6, [F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mHeight:I

    int-to-float v7, v7

    div-float v0, v6, v7

    invoke-direct {p0, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->setDefaultDistance(FF)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v6, :cond_0

    const-string/jumbo v6, "GlComposeBaseView"

    const-string/jumbo v7, "resetLayout : gl root is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGLContext()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v3

    const/16 v6, 0x1701

    invoke-interface {v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-static {v5, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x44fa0000    # 2000.0f

    invoke-static {v5, v2, v0, v6, v7}, Lcom/sec/android/gallery3d/glcore/TUtils;->glhPerspectivef2([FFFFF)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGlConfig()Lcom/sec/android/gallery3d/glcore/GlConfig;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/glcore/GlConfig;->setProspectMatrix([F)V

    const/4 v4, 0x0

    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget v6, v5, v4

    sget v7, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_INT:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    sget v7, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_FLOAT:F

    div-float/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v3, v5, v8}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/16 v6, 0x1700

    invoke-interface {v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    goto :goto_0
.end method

.method setMode(IILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mMode:I

    return-void
.end method

.method public setOnCommentCountClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCommentCountClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnCommentCountClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCommentCountClickListener;

    return-void
.end method

.method public setOnDragDropListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnDragDropListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;

    return-void
.end method

.method public setOnEnlargeAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

    return-void
.end method

.method public setOnExtendListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnExtendListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnExtendListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnExtendListener;

    return-void
.end method

.method public setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V
    .locals 4

    const/4 v3, 0x4

    if-lt p1, v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOnGenericMotionListener : index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnGenericMotionListener:[Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    aput-object p2, v0, p1

    return-void
.end method

.method public setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    return-void
.end method

.method public setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    return-void
.end method

.method public setOnLastCommentClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLastCommentClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnLastCommentClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLastCommentClickListener;

    return-void
.end method

.method public setOnLikeClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnLikeClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeClickListener;

    return-void
.end method

.method public setOnLikeCountClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeCountClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnLikeCountClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLikeCountClickListener;

    return-void
.end method

.method public setOnLocationItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnLocationItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;

    return-void
.end method

.method public setOnMovedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnMovedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnMovedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnMovedListener;

    return-void
.end method

.method public setOnNotificationClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mNotificationClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;

    return-void
.end method

.method public setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    return-void
.end method

.method public setOnRefreshListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnRefreshListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnRefreshListener;

    return-void
.end method

.method public setOnSearchRotateScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchRotateScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnSearchViewRotateScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchRotateScrollListener;

    return-void
.end method

.method public setOnSearchScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    return-void
.end method

.method public setOnShrinkAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnShrinkAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;

    return-void
.end method

.method public setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    return-void
.end method

.method public setOnSwitchStateListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnSwitchStateListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;

    return-void
.end method

.method public setOnSwitchViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

    return-void
.end method

.method public setOnUpdateChannelFloating(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnUpdateChannelFloatingViewListerner;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->mUpdateChannelFloatingListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnUpdateChannelFloatingViewListerner;

    return-void
.end method
