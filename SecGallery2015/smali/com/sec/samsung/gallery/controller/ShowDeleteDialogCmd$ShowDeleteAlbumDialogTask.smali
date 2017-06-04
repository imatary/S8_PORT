.class Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;
.super Landroid/os/AsyncTask;
.source "ShowDeleteDialogCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowDeleteAlbumDialogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mSelectedCnt:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->mSelectedCnt:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    const/4 v3, 0x0

    const/4 v0, -0x1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getTotalBucketIds(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v4, v2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_0

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getTotalSelectedItems()I
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$600(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I

    move-result v3

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->mSelectedCnt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->showDialog(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$ShowDeleteAlbumDialogTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    const/4 v1, 0x0

    # invokes: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->showProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Z)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
