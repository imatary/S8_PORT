.class Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;
.super Ljava/lang/Object;
.source "RecordTimerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mStartTime:J
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->access$100(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    # setter for: Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->timeInMilliseconds:J
    invoke-static {v0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->access$002(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;J)J

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mTimeSwapBuff:J
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->timeInMilliseconds:J
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)J

    move-result-wide v4

    add-long/2addr v2, v4

    # setter for: Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mUpdatedTime:J
    invoke-static {v0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->access$202(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;J)J

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mUpdatedTime:J
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->access$200(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)J

    move-result-wide v2

    # invokes: Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->updateText(J)V
    invoke-static {v0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->access$400(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->mRecordTimerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->access$500(Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
