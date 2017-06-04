.class public abstract Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;
.super Landroid/os/AsyncTask;
.source "MediaCountCheckTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaSet;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    aget-object v0, p1, v3

    if-eqz v0, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->isNotEmpty(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    monitor-exit v2

    :goto_1
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected isNotEmpty(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    return-void
.end method

.method protected abstract onMediaNotEmpty()V
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->onMediaNotEmpty()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0247

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
