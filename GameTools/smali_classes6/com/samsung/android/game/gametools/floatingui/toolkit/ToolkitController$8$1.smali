.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8$1;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8;->onAnimEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->doScreenShot()V
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$900(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    return-void
.end method
