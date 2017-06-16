.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$47;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekProgressWithUpdate(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field final synthetic val$f:F


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$47;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$47;->val$f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$47;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$47;->val$f:F

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setStateProgressWithUpdate(F)V

    return-void
.end method
