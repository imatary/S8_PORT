.class Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$11;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$11;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$11;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mReceiveCloudSyncOn:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1702(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$11;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$11;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$11;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
