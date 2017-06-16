.class Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$2;
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "more_actions_package_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->showChangePlayerDialog()V

    goto :goto_0
.end method
