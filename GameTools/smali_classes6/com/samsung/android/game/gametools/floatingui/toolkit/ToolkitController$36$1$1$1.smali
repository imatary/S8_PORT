.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1$1;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$2000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$2000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1$1;->this$3:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$2002(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    return-void
.end method
