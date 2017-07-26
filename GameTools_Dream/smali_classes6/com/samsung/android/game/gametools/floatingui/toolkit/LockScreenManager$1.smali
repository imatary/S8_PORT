.class Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;
.super Ljava/lang/Object;
.source "LockScreenManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const v9, 0x3f333333    # 0.7f

    const/4 v8, 0x1

    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->isLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :goto_0
    monitor-exit p0

    return v8

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "LockScreenManager"

    const-string/jumbo v5, "ACTION_DOWN"

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;Landroid/view/MotionEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    :try_start_4
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/graphics/PointF;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "LockScreenManager"

    const-string/jumbo v5, "ACTION_DOWN (MOVE)"

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;Landroid/view/MotionEvent;)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/graphics/PointF;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "LockScreenManager"

    const-string/jumbo v5, "ACTION_MOVE_START"

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v4, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$302(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/graphics/PointF;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)F

    move-result v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-virtual {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->unlock()V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)F

    move-result v4

    div-float v3, v1, v4

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/widget/FrameLayout;

    move-result-object v4

    mul-float v5, v3, v9

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    sub-float v5, v9, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$700(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "LockScreenManager"

    const-string/jumbo v5, "ACTION_UP"

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-static {v4, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;Landroid/view/MotionEvent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
