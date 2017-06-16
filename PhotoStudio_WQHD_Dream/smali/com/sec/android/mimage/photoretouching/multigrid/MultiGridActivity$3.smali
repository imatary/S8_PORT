.class Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MultiGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->checkIfPrivateImageExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->finish()V

    :cond_0
    return-void
.end method
