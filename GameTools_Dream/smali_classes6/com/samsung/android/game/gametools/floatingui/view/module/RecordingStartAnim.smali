.class public Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;
.super Ljava/lang/Object;
.source "RecordingStartAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;
    }
.end annotation


# static fields
.field public static final END:I = 0x1

.field public static final START:I

.field private static mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;


# instance fields
.field private isAnimating:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;

.field private mMainView:Landroid/view/View;

.field private mRecCameraRedView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->isAnimating:Z

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mMainView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->replaceContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mRecCameraRedView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    :goto_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->replaceContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private inflateView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_record_start_anim:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mMainView:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_camera_red:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mRecCameraRedView:Landroid/widget/ImageView;

    return-void
.end method

.method private initView()V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mRecCameraRedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mRecCameraRedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mRecCameraRedView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private replaceContext(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->isAnimating:Z

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->inflateView()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public startAnim(JLcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;)V
    .locals 4

    const/high16 v2, 0x3f000000    # 0.5f

    iput-object p3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mMainView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string/jumbo v0, "RecordingEndAnim : startAnim : getView First"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->isAnimating:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->cancelAnim()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->isAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;->onAnimChanged(I)Z

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->initView()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mRecCameraRedView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
