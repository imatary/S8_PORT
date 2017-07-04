.class Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;
.super Landroid/content/BroadcastReceiver;
.source "AccountSettingDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/16 v2, 0x3e9

    const-string/jumbo v0, "AccountSetting"

    const-string/jumbo v1, "SyncOn Receive from CloudAgent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.scloud.cloudAgent.CloudStore.ACTION_NOTIFY_SYNC_ON_TO_GALLERY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1702(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1600(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1800(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1800(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method
