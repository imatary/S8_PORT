.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/16 v2, 0x14d

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showHandle(I)Z

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;)V

    const-wide/16 v4, 0x64

    invoke-static {v1, v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
