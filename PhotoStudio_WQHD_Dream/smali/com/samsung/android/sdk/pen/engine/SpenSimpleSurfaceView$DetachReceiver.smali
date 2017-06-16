.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SpenSimpleSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetachReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v1, "penInsert"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "SpenSimpleSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " penInsert="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$2000(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$DetachReceiver;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mPenDetachmentListener:Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$2000(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;->onDetached(Z)V

    :cond_0
    return-void
.end method
