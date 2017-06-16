.class Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;
.super Ljava/util/TimerTask;
.source "SpenContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->updateTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3$1;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
