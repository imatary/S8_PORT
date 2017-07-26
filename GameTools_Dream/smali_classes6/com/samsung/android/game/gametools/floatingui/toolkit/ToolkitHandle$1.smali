.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;
.super Ljava/lang/Object;
.source "ToolkitHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isStatusBarOn()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getStatusBarHeight()I

    move-result v1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setPosition(IIZ)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->reportHandlePosition(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandlePositionReporter:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa

    invoke-static {v3, v4, v6, v7}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
