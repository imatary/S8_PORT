.class public Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;
.super Landroid/widget/TextView;
.source "RecordTimerView.java"


# instance fields
.field private mRecordTimerHandler:Landroid/os/Handler;

.field private mStartTime:J

.field private mTimeSwapBuff:J

.field private mUpdateRecordTimerThread:Ljava/lang/Runnable;

.field private mUpdatedTime:J

.field private timeInMilliseconds:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mStartTime:J

    iput-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->timeInMilliseconds:J

    iput-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mTimeSwapBuff:J

    iput-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mUpdatedTime:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mRecordTimerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mUpdateRecordTimerThread:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->timeInMilliseconds:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->timeInMilliseconds:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mUpdatedTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mUpdatedTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mTimeSwapBuff:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->updateText(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mRecordTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateText(J)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    div-int/lit8 v0, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public pauseTimer()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mTimeSwapBuff:J

    iget-wide v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->timeInMilliseconds:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mTimeSwapBuff:J

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mRecordTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mUpdateRecordTimerThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetTimer()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->updateText(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mRecordTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mUpdateRecordTimerThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTimer()V
    .locals 4

    const-wide/16 v2, 0x12c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mStartTime:J

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mRecordTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mUpdateRecordTimerThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->semClearAllTextEffect()V

    const/high16 v0, 0x40400000    # 3.0f

    const v1, 0x106000c

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->semAddOuterGlowTextEffect(FIF)I

    return-void
.end method
