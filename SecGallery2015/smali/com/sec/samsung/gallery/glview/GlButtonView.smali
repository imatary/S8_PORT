.class public Lcom/sec/samsung/gallery/glview/GlButtonView;
.super Lcom/sec/android/gallery3d/glcore/GlImageView;
.source "GlButtonView.java"


# static fields
.field private static final BUTTON_GAP:I = 0xa

.field private static final TAG:Ljava/lang/String; = "GlButtonView"


# instance fields
.field private isPressed:Z

.field private mClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mContext:Landroid/content/Context;

.field private mDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

.field private final mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mHoverLabelListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;

.field private mIsPreviousState:Z

.field private mMargine:I

.field private mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

.field private mNormalDrawableId:I

.field private mPressedDrawableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->isPressed:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mIsPreviousState:Z

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mNormalDrawableId:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mPressedDrawableId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlButtonView;->initMoveDetectorListener()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/GlButtonView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->isPressed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/glview/GlButtonView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->isPressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/GlButtonView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mNormalDrawableId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/GlButtonView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/GlButtonView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mPressedDrawableId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/GlButtonView;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/GlButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlButtonView;->playSoundOnClickThumb()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/GlButtonView;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/GlButtonView;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mGlObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method private btnRect()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlRect;->mLeft:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlRect;->mTop:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlRect;->mLeft:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlRect;->mWidth:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlRect;->mTop:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlRect;->mHeight:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private checkPosIn(IILandroid/graphics/Rect;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mLeft:I

    add-int/lit8 v0, v0, 0xa

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlRect;->mLeft:I

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mRect:Lcom/sec/android/gallery3d/glcore/GlRect;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlRect;->mWidth:I

    add-int/lit8 v1, v1, -0x14

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initMoveDetectorListener()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/GlButtonView$1;-><init>(Lcom/sec/samsung/gallery/glview/GlButtonView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    return-void
.end method

.method private playSoundOnClickThumb()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlButtonView;->btnRect()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/sec/samsung/gallery/glview/GlButtonView;->checkPosIn(IILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_5

    :cond_1
    if-eqz v1, :cond_4

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mIsPreviousState:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mHoverLabelListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mMargine:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlButtonView;->getId()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;->onEnter(II)Z

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mIsPreviousState:Z

    :cond_3
    :goto_1
    return v8

    :cond_4
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mIsPreviousState:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mHoverLabelListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;->onExit()Z

    goto :goto_0

    :cond_5
    const/16 v5, 0xa

    if-ne v0, v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mHoverLabelListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;->onExit()Z

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mIsPreviousState:Z

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v3, :cond_1

    const-string/jumbo v3, "GlButtonView"

    const-string/jumbo v4, "mGlRoot is null in GlButtonView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlButtonView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/glcore/GlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->isPressed:Z

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlButtonView;->btnRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mMoveDetect:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->onTouch(Landroid/view/MotionEvent;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;)Z

    move-result v2

    goto :goto_0
.end method

.method public setButtonRightMargine(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mMargine:I

    return-void
.end method

.method public setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-void
.end method

.method public setHoverLabelListener(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mHoverLabelListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;

    return-void
.end method

.method public setNormalDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mNormalDrawableId:I

    return-void
.end method

.method public setPressedDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView;->mPressedDrawableId:I

    return-void
.end method
