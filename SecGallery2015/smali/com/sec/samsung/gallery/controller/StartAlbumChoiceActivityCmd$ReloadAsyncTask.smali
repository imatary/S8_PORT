.class Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;
.super Landroid/os/AsyncTask;
.source "StartAlbumChoiceActivityCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadAsyncTask"
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


# static fields
.field private static final MSG_SHOW_PROGRESS_DIALOG:I = 0x1

.field private static final SHOW_PROGRESS_DIALOG_AFTER_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ReloadAsyncTask"


# instance fields
.field private mCurrContext:Landroid/content/Context;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private mHandler:Landroid/os/Handler;

.field private mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$1;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$2;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mCurrContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mCurrContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mCurrContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "ReloadAsyncTask"

    const-string/jumbo v4, "doInBackground started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v3, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mCurrContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mCurrContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->cancel(Z)Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v3, :cond_4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    new-array v4, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->access$702(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;[Lcom/sec/android/gallery3d/data/MediaSet;)[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->access$700(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "ReloadAsyncTask"

    const-string/jumbo v1, "In onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialogInstantly()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mCurrContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->access$700(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;->access$800(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd;)V

    :cond_2
    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    :cond_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    const-string/jumbo v0, "ReloadAsyncTask"

    const-string/jumbo v1, "In onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
