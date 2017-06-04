.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;
.super Ljava/lang/Object;
.source "ToolkitSatelite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->open(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

.field final synthetic val$anim:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    iput-boolean p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->val$anim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->val$anim:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->initializeToShow()Z
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # setter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsOpen:Z
    invoke-static {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$602(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Z)Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->removeViewFromWindow()V

    goto :goto_0
.end method
