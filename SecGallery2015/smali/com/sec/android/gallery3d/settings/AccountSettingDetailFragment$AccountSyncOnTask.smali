.class Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;
.super Landroid/os/AsyncTask;
.source "AccountSettingDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSyncOnTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final SYNC_NOT_PROCESSED:I

.field private mReturn:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->mReturn:I

    const/16 v0, 0x36b2

    iput v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->SYNC_NOT_PROCESSED:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->mReturn:I

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "settings_is_sync_on"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->setGalleryCloudSettingsValue(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v3, "RESULT_SYNC_ENABLE"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "RESULT_SYNC_ENABLE_RCODE"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->mReturn:I

    const-string/jumbo v3, "AccountSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sync on failed mReturn is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->mReturn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "AccountSetting"

    const-string/jumbo v4, "bundle is null, call legacy api"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "settings_is_sync_on"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->setCloudSettingsValue(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->mReturn:I

    const/16 v3, 0x36b2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a036a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0051

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0463

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # invokes: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->reloadPreference()V
    invoke-static {v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1600(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;

    move-result-object v3

    # getter for: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_USE_CLOUD_NAME_FOR_JAPAN:Z
    invoke-static {}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0a00b0

    :goto_1
    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const v2, 0x7f0a00af

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->showProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$1300(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Z)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
