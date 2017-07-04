.class Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;
.super Landroid/os/AsyncTask;
.source "VideoPlayCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/VideoPlayCmd;
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
        "Landroid/net/Uri;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# static fields
.field private static final FLIP_VIDEO_VIEWER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.dual"


# instance fields
.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->access$000(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.app.camera.shootingmode.dual"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "VideoPlayCmd"

    const-string/jumbo v3, "Request scloud flip video download start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->access$000(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getServerId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->CACHE_DIRECTORY:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->downloadByServerId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v2, "VideoPlayCmd"

    const-string/jumbo v3, "Request scloud flip video download end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->cancel(Z)Z

    return-void
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    return-void
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    if-eqz v1, :cond_4

    :cond_1
    if-nez p1, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->access$000(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a019e

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->access$000(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a019d

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->access$000(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.camera.shootingmode.dual"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->access$100(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Lcom/sec/samsung/gallery/controller/VideoPlay;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v2, p1, v0}, Lcom/sec/samsung/gallery/controller/VideoPlay;->launchFlipVideoPlayer(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->access$100(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Lcom/sec/samsung/gallery/controller/VideoPlay;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->access$200(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/controller/VideoPlay;->execute(Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->access$000(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->this$0:Lcom/sec/samsung/gallery/controller/VideoPlayCmd;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->access$000(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0a0247

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
