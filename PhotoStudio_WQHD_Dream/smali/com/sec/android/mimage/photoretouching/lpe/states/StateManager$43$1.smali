.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43$1;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$43;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mIsUIReady:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3502(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Z)Z

    return-void
.end method
