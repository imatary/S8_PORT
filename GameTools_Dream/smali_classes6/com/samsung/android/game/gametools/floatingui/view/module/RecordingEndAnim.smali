.class public Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;
.super Ljava/lang/Object;
.source "RecordingEndAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final END:I = 0x1

.field public static final START:I

.field private static mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;


# instance fields
.field final TAG:Ljava/lang/String;

.field private isAnimating:Z

.field private mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

.field private mCheckAnimDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private mCheckAnimator:Landroid/animation/ObjectAnimator;

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;

.field private mMainView:Landroid/view/View;

.field private mRecAnimBlackView:Landroid/view/ViewGroup;

.field private mRecAnimView:Landroid/view/ViewGroup;

.field private mSavedCheckView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "RecordingEndAnim"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->isAnimating:Z

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mMainView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mDuration:J

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->replaceContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/graphics/drawable/ClipDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimDrawable:Landroid/graphics/drawable/ClipDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->isAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    :goto_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->replaceContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private inflateView()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_record_end_anim:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mMainView:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mMainView:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_record_anim_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mRecAnimView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mMainView:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_record_anim_black:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mRecAnimBlackView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mMainView:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_record_save_check:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mSavedCheckView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mSavedCheckView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->clip_drawable_check:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mSavedCheckView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimDrawable:Landroid/graphics/drawable/ClipDrawable;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimDrawable:Landroid/graphics/drawable/ClipDrawable;

    const/16 v1, 0xff

    const/16 v2, 0x4e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private initView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mRecAnimView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mRecAnimBlackView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private replaceContext(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->cancelAnim()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimDrawable:Landroid/graphics/drawable/ClipDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mCheckAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const-string/jumbo v0, "RecordingEndAnim"

    const-string/jumbo v1, "cancelAnim"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->isAnimating:Z

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->inflateView()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public startAnim(JLcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;)V
    .locals 7

    const/4 v3, 0x0

    iput-wide p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mDuration:J

    iput-object p3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mMainView:Landroid/view/View;

    if-nez v2, :cond_0

    const-string/jumbo v2, "RecordingEndAnim"

    const-string/jumbo v3, "startAnim : getView First"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->isAnimating:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->cancelAnim()V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->isAnimating:Z

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;

    invoke-interface {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;->onAnimChanged(I)Z

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->initView()V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4046000000000000L    # 44.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mDuration:J

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;-><init>(Landroid/content/Context;J)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mRecAnimBlackView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->startAnim()V

    goto :goto_0
.end method
