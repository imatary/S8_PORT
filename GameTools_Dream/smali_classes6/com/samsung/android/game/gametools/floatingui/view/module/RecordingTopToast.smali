.class public Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;
.super Lcom/sec/game/gamecast/common/view/CommonFloating;
.source "RecordingTopToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;
    }
.end annotation


# static fields
.field public static final ANIM_END:I = 0x1

.field public static final ANIM_START:I

.field private static mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;


# instance fields
.field private final RECORD_END:I

.field private final RECORD_START:I

.field private isAnimating:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/view/CommonFloating;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->RECORD_START:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->RECORD_END:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->isAnimating:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->isAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;

    return-object v0
.end method

.method private cancelAllAnim()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;
    .locals 2

    const-class v1, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    :goto_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInstance:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    iput-object p0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private recordEndAnim()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;->onAnimChanged(I)Z

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->isAnimating:Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    invoke-static {v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    new-instance v4, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->startAnim(JLcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;)V

    return-void
.end method

.method private recordStartAnim()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;->onAnimChanged(I)Z

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->isAnimating:Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    const-wide v2, 0x404b800000000000L    # 55.0

    invoke-static {v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    new-instance v4, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->startAnim(JLcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addLayoutToWindow()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mIsLayoutAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public inflate()V
    .locals 0

    return-void
.end method

.method public inflate(I)V
    .locals 5

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->setParams()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    const-wide v2, 0x404b800000000000L    # 55.0

    invoke-static {v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mLayout:Landroid/view/ViewGroup;

    const-string/jumbo v2, "Recording Top Start"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4046000000000000L    # 44.0

    invoke-static {v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mLayout:Landroid/view/ViewGroup;

    const-string/jumbo v2, "Recording Top End"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized removeLayoutFromWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mIsLayoutAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->isAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->cancelAllAnim()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->isAnimating:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->isLayoutAddedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->removeLayoutFromWindow()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setParams()V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    const/16 v3, 0x7d6

    const v4, 0x1000628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showRecordEndAnim(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->reset()V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->inflate(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->addLayoutToWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->updateLayout()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->recordEndAnim()V

    return-void
.end method

.method public showRecordStartAnim(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->reset()V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->inflate(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->addLayoutToWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->updateLayout()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->recordStartAnim()V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
