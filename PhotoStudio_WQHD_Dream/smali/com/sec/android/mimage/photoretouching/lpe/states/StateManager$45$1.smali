.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45$1;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mService:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3900(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v0

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mService:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3900(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v0

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$45;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateBottomButtons(I)V

    return-void
.end method
