.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbTouchAnimation"
.end annotation


# instance fields
.field private FOCUS_SCALE:F

.field private PRESS_SCALE:F

.field private mFromScale:F

.field private mLScale:F

.field private mToScale:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->PRESS_SCALE:F

    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->FOCUS_SCALE:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->startPressAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->cancelAnim()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->setPressScale(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->setFocusScale(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->startFocusAnim()V

    return-void
.end method

.method private cancelAnim()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->stop()V

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mFromScale:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mToScale:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->start()V

    :cond_1
    return-void
.end method

.method private setFocusScale(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->FOCUS_SCALE:F

    return-void
.end method

.method private setPressScale(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->PRESS_SCALE:F

    return-void
.end method

.method private startFocusAnim()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->stop()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mFromScale:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->FOCUS_SCALE:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mToScale:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->start()V

    return-void
.end method

.method private startPressAnim()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->stop()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mFromScale:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->PRESS_SCALE:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mToScale:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->start()V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mFromScale:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mToScale:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mFromScale:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setScale(FF)V

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseOwnThumbTouchAnim:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mFromScale:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mToScale:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mFromScale:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setScale(FF)V

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mFromScale:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mToScale:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mFromScale:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setScale(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAllChildObject()[Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAllChildObject()[Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v1, v3, v2

    if-nez v1, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setScale(FF)V

    goto :goto_2

    :cond_4
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->mLScale:F

    goto :goto_0
.end method
