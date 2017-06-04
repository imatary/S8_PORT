.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->onHandleClick()V
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$2100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;)V

    const-wide/16 v4, 0x5dc

    invoke-static {v1, v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStressTestRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-static {v1, v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
