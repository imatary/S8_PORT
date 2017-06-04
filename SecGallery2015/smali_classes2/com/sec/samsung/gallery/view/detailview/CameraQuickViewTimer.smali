.class public Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;
.super Ljava/lang/Object;
.source "CameraQuickViewTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$OnFinishedListener;
    }
.end annotation


# static fields
.field public static final QUICKVIEW_TIME:Ljava/lang/String; = "Quick_Time"

.field public static final QUIT_TIME_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraQuickViewTimer"


# instance fields
.field private mDuration:J

.field private mOnFinishedListener:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$OnFinishedListener;

.field private mQuitTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mDuration:J

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;)Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$OnFinishedListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mOnFinishedListener:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$OnFinishedListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mQuitTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method private isTimerRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mQuitTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mQuitTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mQuitTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public setOnFinishedListener(Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$OnFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mOnFinishedListener:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$OnFinishedListener;

    return-void
.end method

.method public setReviewDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mDuration:J

    return-void
.end method

.method public startTimer()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mDuration:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mDuration:J

    const-wide/16 v4, 0x12c

    sub-long v2, v0, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_2

    const-string/jumbo v0, "CameraQuickViewTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTimer() : invalid duration: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;JJ)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->mQuitTimer:Landroid/os/CountDownTimer;

    goto :goto_0
.end method
