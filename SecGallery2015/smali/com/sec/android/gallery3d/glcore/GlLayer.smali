.class public Lcom/sec/android/gallery3d/glcore/GlLayer;
.super Ljava/lang/Object;
.source "GlLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;
    }
.end annotation


# static fields
.field private static final DEF_CHILD_COUNT:I = 0x4

.field public static final LAYER_STATE_ACTIVE:I = 0x1

.field public static final LAYER_STATE_NONE:I = 0x0

.field private static final LAYER_STATE_PAUSED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GlLayer"


# instance fields
.field private mChildCount:I

.field private mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private mContext:Landroid/content/Context;

.field private mCunsumeScale:Z

.field protected mDistance:F

.field protected mFov:F

.field public mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mGlSubObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glcore/GlObject;",
            ">;"
        }
    .end annotation
.end field

.field public mHeight:I

.field public mHeightSpace:F

.field private mLayerCallback:Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;

.field private final mMDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

.field private final mMHoverDetectorListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

.field private mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

.field private mMoveHoverDetect:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

.field private mParent:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field public mState:I

.field private mTabPosition:I

.field public mWideMode:Z

.field public mWidth:I

.field public mWidthSpace:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlSubObject:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mParent:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mFov:F

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mDistance:F

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mCunsumeScale:Z

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mTabPosition:I

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveHoverDetect:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mLayerCallback:Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlLayer$1;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlLayer$2;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMHoverDetectorListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/glcore/GlLayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onClicked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/GlLayer;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onLongClicked(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glcore/GlLayer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/glcore/GlLayer;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getHoverListScrollMode()I

    move-result v0

    return v0
.end method

.method private getHoverListScrollMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private onClicked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private onLongClicked(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected addLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 5

    const/4 v3, 0x4

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-nez v2, :cond_1

    new-array v2, v3, [Lcom/sec/android/gallery3d/glcore/GlLayer;

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    aput-object p1, v2, v3

    iput-object p0, p1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mParent:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-void

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    new-array v1, v0, [Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    goto :goto_0
.end method

.method public addObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlSubObject:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlSubObject:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlSubObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->addObject(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mObjectZPosChanged:Z

    goto :goto_0
.end method

.method public create(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->create(Landroid/content/Context;II)V

    return-void
.end method

.method public create(Landroid/content/Context;II)V
    .locals 4

    const-string/jumbo v1, "GlLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAirViewEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMHoverDetectorListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveHoverDetect:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onCreate(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlLayer;->create(Landroid/content/Context;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mLayerCallback:Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mLayerCallback:Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;->onViewInitialize()V

    :cond_2
    return-void
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "GlLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "destroy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->destroy()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iput-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveHoverDetect:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onDestroy()V

    :cond_1
    return-void
.end method

.method public detach()V
    .locals 0

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public dispatchGenericMotionCancel()V
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchGenericMotionCancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onGenericMotionCancel()V

    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveHoverDetect:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveHoverDetect:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->onHover(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public dispatchKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public dispatchKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public dispatchKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public dispatchRotation(Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;)V
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchRotation(Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public dispatchScale(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchScale(Landroid/view/ScaleGestureDetector;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mCunsumeScale:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onScale(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0
.end method

.method public dispatchScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mCunsumeScale:Z

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mCunsumeScale:Z

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mCunsumeScale:Z

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public dispatchScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchScaleEnd(Landroid/view/ScaleGestureDetector;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mCunsumeScale:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mCunsumeScale:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0
.end method

.method public dispatchSurfaceChanged(IIZZ)V
    .locals 2

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onSurfaceChanged(II)V

    :cond_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchSurfaceChanged(IIZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    if-nez v2, :cond_3

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public getActiveObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mMotionTarget:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getGlRoot()Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method protected getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    goto :goto_0
.end method

.method public getParent()Lcom/sec/android/gallery3d/glcore/GlLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mParent:Lcom/sec/android/gallery3d/glcore/GlLayer;

    return-object v0
.end method

.method public getRootObject()Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mTabPosition:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    goto :goto_0
.end method

.method public isActive()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCreated()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected lockRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRefresh()V

    goto :goto_0
.end method

.method protected onCommand(ILjava/lang/Object;III)V
    .locals 0

    return-void
.end method

.method protected onCreate(II)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method protected onGenericMotionCancel()V
    .locals 0

    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMouseWheelScaled(ZII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMoved(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPressed(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onReleased(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onScale(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onScrolled(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onSecondaryClicked(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onSurfaceChanged(II)V
    .locals 0

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 4

    const-string/jumbo v1, "GlLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->pause()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public performAction(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    const-string/jumbo v1, "GlLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mState:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->resume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_0
    return-void
.end method

.method protected setClearByColor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setClearByColor(Z)V

    goto :goto_0
.end method

.method protected setEnableHoverScroll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveHoverDetect:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveHoverDetect:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->setEnableHoverScroll(Z)V

    :cond_0
    return-void
.end method

.method protected setHoverScrollFlexibleHeightMargin(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveHoverDetect:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mMoveHoverDetect:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->setHoverScrollFlexibleHeightMargin(I)V

    const-string/jumbo v0, "GlLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoverScrollFlexibleHeightMargin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setLayerCallback()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mLayerCallback:Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mLayerCallback:Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;->onViewInitialize()V

    :cond_0
    return-void
.end method

.method public setLayerCallback(Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mLayerCallback:Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;

    return-void
.end method

.method public setPos(II)V
    .locals 0

    return-void
.end method

.method public setRootView(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->unlockRefresh()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mChildLayer:[Lcom/sec/android/gallery3d/glcore/GlLayer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->setRootView(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-void
.end method

.method protected setTabPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mTabPosition:I

    return-void
.end method

.method protected unlockRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRefresh()V

    goto :goto_0
.end method
