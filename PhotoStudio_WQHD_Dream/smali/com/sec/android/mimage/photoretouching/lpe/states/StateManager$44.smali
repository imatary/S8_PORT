.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$44;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->resetmIsAnimating()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$44;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$44;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mIsAnimating:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3400(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PEDIT_StateManager"

    const-string v1, "mIsAnimating resetting error scenario"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$44;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3402(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Z)Z

    :cond_0
    return-void
.end method
