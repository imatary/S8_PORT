.class Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$1;
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->doShareViaPrint(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
