.class Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;
.super Landroid/os/AsyncTask;
.source "PlayMotionVideoCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayUriTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/net/Uri;",
        ">;>;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# instance fields
.field private final mCmdType:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mCmdType:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "PlayMotionVideoCmd"

    const-string/jumbo v1, "Request scloud motion video download start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->access$000(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getServerId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->CACHE_DIRECTORY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->downloadByServerId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const-string/jumbo v1, "PlayMotionVideoCmd"

    const-string/jumbo v2, "Request scloud motion video download end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "PlayMotionVideoCmd"

    const-string/jumbo v2, "Request scloud motion video download end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->cancel(Z)Z

    return-void
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->access$000(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a04c3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "PlayMotionVideoCmd"

    const-string/jumbo v3, "launchMotionPlayer for scloud video"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->access$000(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->access$000(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->disableFinishingAtSecureLock()V

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.app.slowmotion"

    const-string/jumbo v3, "com.samsung.app.slowmotion.slowmotionactivity.SlowMotionActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "uri"

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "key_recorded_mode"

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mCmdType:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "original_path"

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->access$000(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->access$100(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->access$000(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0029

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 7

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->access$000(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->access$000(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0a0247

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
