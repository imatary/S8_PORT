.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$6$1;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$6;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$6;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$6;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->isRuningAnim:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$6$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$6;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->historyLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
