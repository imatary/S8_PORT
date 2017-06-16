.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$7;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideCardView()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->historyLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->historyLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$7$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$7$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$7;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->isRuningAnim:Z

    return-void
.end method
