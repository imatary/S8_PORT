.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42$1;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$2200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    return-void
.end method
