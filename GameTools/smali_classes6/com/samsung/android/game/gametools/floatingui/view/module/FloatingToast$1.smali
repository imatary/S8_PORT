.class Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$1;
.super Ljava/lang/Object;
.source "FloatingToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->arrowShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->arrowRepeat:Ljava/lang/Runnable;

    const-wide/16 v2, 0x834

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
