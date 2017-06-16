.class public Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;
.super Landroid/widget/FrameLayout;
.source "SelectedButtonLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;
    }
.end annotation


# instance fields
.field private mActivityLayoutTouchUpCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;

.field private mIsIntercept:Z

.field private mPosX:F

.field private mPosY:F

.field private mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mIsIntercept:Z

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mActivityLayoutTouchUpCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->initLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mIsIntercept:Z

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mActivityLayoutTouchUpCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->initLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mIsIntercept:Z

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mActivityLayoutTouchUpCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->initLayout()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mIsIntercept:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosX:F

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosX:F

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosY:F

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosY:F

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mActivityLayoutTouchUpCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;

    return-object v0
.end method

.method private initLayout()V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    return-void
.end method

.method public getPressedButton()Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosY:F

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mIsIntercept:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosX:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setTranslationX(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosY:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setTranslationY(F)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosX:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosY:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->setDisableIntercept(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDisableIntercept(FF)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mIsIntercept:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mActivityLayoutTouchUpCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosX:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosY:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosX:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getBottom()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosY:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;->touchUp(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    return-void
.end method

.method public setEnableIntercept(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;)V
    .locals 3

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mActivityLayoutTouchUpCallback:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mIsIntercept:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosX:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setTranslationX(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mPosY:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/MyButton;->setTranslationY(F)V

    return-void
.end method
