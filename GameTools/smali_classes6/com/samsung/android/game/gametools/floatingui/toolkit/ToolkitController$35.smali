.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$35;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showIntro()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

.field final synthetic val$handle:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$35;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$35;->val$handle:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$35;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$35;->val$handle:Landroid/view/View;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->animateIntro(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1900(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/view/View;)V

    return-void
.end method
