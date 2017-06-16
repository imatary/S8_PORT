.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->addEventForFaceDetection(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field final synthetic val$isFacePresent:Z


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput-boolean p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->val$isFacePresent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mPortraitMainBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->val$isFacePresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->val$isFacePresent:Z

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mIsFaceDetect:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3702(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateButtonMainView()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3800(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
