.class Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "OverlayHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# static fields
.field private static final ARROW_ANIMATION_PAGE:I = 0x0

.field private static final ZOOM_ANIMATION_PAGE:I = 0x1


# instance fields
.field private mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

.field private mBottomArrow:Landroid/widget/ImageView;

.field private mBottomArrowAnimation:Landroid/view/animation/Animation;

.field private mBottomArrowText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mLeftArrow:Landroid/widget/ImageView;

.field private mLeftArrowAnimation:Landroid/view/animation/Animation;

.field private mLeftArrowText:Landroid/widget/TextView;

.field private mOneHandZoomLongGuide:Landroid/widget/ImageView;

.field private mOneHandZoomLongGuideAnimation:Landroid/view/animation/Animation;

.field private mOneHandZoomMinus:Landroid/widget/ImageView;

.field private mOneHandZoomMinusAnimation:Landroid/view/animation/Animation;

.field private mOneHandZoomPlus:Landroid/widget/ImageView;

.field private mOneHandZoomPlusAnimation:Landroid/view/animation/Animation;

.field private mOneHandZoomShortGuide:Landroid/widget/ImageView;

.field private mOneHandZoomShortGuideAnimation:Landroid/view/animation/Animation;

.field private mRecordingButton:Landroid/widget/ImageView;

.field private mRecordingButtonAnimation:Landroid/view/animation/Animation;

.field private mRightArrow:Landroid/widget/ImageView;

.field private mRightArrowAnimation:Landroid/view/animation/Animation;

.field private mRightArrowText:Landroid/widget/TextView;

.field private mShutterButton:Landroid/widget/ImageView;

.field private mShutterButtonAnimation:Landroid/view/animation/Animation;

.field private mShutterButtonPressed:Landroid/widget/ImageView;

.field private mShutterButtonPressedAnimation:Landroid/view/animation/Animation;

.field private mThumbnailButton:Landroid/widget/ImageView;

.field private mThumbnailButtonAnimation:Landroid/view/animation/Animation;

.field private mTopArrow:Landroid/widget/ImageView;

.field private mTopArrowAnimation:Landroid/view/animation/Animation;

.field private mTopArrowText:Landroid/widget/TextView;

.field private mViewPagerItem:[Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrow:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrow:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrow:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrow:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButton:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressed:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuide:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuide:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlus:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinus:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButton:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButton:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressedAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuideAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuideAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlusAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinusAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButtonAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButtonAnimation:Landroid/view/animation/Animation;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->startArrowAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->startOneHandZoomAnimation()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;)Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    return-object p1
.end method

.method private startArrowAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private startOneHandZoomAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressed:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressedAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuide:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuide:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinusAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButtonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButtonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13

    const v12, 0x7f0902c9

    const v11, 0x7f0901ab

    const v10, 0x7f0901a5

    const/4 v9, 0x1

    const/4 v0, 0x0

    const-string v1, "OverlayHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mIsLocaleRTL:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1300(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/lit8 p2, v1, -0x1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04000b

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, p2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v1, v1, p2

    const v2, 0x7f0f0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v1, v1, p2

    const v2, 0x7f0f0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v0, v0, p2

    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04000a

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v1, v1, p2

    const v4, 0x7f0f0036

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0030

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrow:Landroid/widget/ImageView;

    const v1, 0x7f0f0031

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrow:Landroid/widget/ImageView;

    const v1, 0x7f0f0032

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrow:Landroid/widget/ImageView;

    const v1, 0x7f0f0033

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrow:Landroid/widget/ImageView;

    const v1, 0x7f0f0035

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowText:Landroid/widget/TextView;

    const v1, 0x7f0f0034

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowText:Landroid/widget/TextView;

    const v1, 0x7f0f002c

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowText:Landroid/widget/TextView;

    const v1, 0x7f0f002d

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowText:Landroid/widget/TextView;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->HORIZONTAL_ARROW_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2300()F

    move-result v1

    const-wide/16 v4, 0x0

    move v2, v0

    move v3, v0

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getHorizontalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2400(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mLeftArrowAnimation:Landroid/view/animation/Animation;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->HORIZONTAL_ARROW_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2300()F

    move-result v1

    neg-float v1, v1

    const-wide/16 v4, 0x29a

    move v2, v0

    move v3, v0

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getHorizontalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2400(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRightArrowAnimation:Landroid/view/animation/Animation;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->VERTICAL_ARROW_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2500()F

    move-result v3

    const-wide/16 v4, 0x9e5

    move v1, v0

    move v2, v0

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getVerticalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2600(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mTopArrowAnimation:Landroid/view/animation/Animation;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->VERTICAL_ARROW_ANIMATION_OFFSET:F
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2500()F

    move-result v1

    neg-float v3, v1

    const-wide/16 v4, 0x9e5

    move v1, v0

    move v2, v0

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getVerticalArrowAnimation(FFFFJ)Landroid/view/animation/Animation;
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2600(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mBottomArrowAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->startArrowAnimation()V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v0, v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000d

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v0, v0, p2

    const v3, 0x7f0f0036

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0044

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButton:Landroid/widget/ImageView;

    const v0, 0x7f0f0045

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressed:Landroid/widget/ImageView;

    const v0, 0x7f0f003e

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuide:Landroid/widget/ImageView;

    const v0, 0x7f0f003f

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuide:Landroid/widget/ImageView;

    const v0, 0x7f0f0040

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlus:Landroid/widget/ImageView;

    const v0, 0x7f0f0041

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinus:Landroid/widget/ImageView;

    const v0, 0x7f0f0042

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButton:Landroid/widget/ImageView;

    const v0, 0x7f0f0043

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButton:Landroid/widget/ImageView;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getShutterButtonShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2700(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonAnimation:Landroid/view/animation/Animation;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getOneHandZoomingAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2800()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mShutterButtonPressedAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuide:Landroid/widget/ImageView;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getBaseMenuShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2900(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomShortGuideAnimation:Landroid/view/animation/Animation;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getOneHandZoomShowAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$3000()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomLongGuideAnimation:Landroid/view/animation/Animation;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getOneHandZoomShowAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$3000()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomPlusAnimation:Landroid/view/animation/Animation;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getOneHandZoomShowAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$3000()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mOneHandZoomMinusAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButton:Landroid/widget/ImageView;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getBaseMenuShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2900(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mRecordingButtonAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButton:Landroid/widget/ImageView;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->getBaseMenuShowAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;->access$2900(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mThumbnailButtonAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->startOneHandZoomAnimation()V

    const v0, 0x7f0902ca

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v0, v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0902ca

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshAnimation(I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mIsLocaleRTL:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1300(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-lez p1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mAnimationHandler:Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    invoke-virtual {v0, v2, v4, v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public refreshPagerItem(II)V
    .locals 11

    const v10, 0x7f0f0038

    const v9, 0x7f0f0036

    const v8, 0x7f0f0037

    const/4 v7, 0x3

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    if-eqz v4, :cond_0

    if-ne p2, v6, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->HELP_TITLE_TOP_MARGIN_LAND:I
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$3100(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v4, -0x2

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->HELP_TITLE_TOP_MARGIN_PORT:I
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$3200(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v4, -0x2

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->mViewPagerItem:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
