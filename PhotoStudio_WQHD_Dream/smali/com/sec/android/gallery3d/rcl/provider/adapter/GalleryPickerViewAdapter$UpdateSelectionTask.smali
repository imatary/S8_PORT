.class Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;
.super Landroid/os/AsyncTask;
.source "GalleryPickerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSelectionTask"
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
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;-><init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)V

    return-void
.end method

.method private getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "GalleryPickerViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePathFromUri error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_3

    const-string v0, "GalleryPickerViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePathFromUri cursor size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v0, "GalleryPickerViewAdapter"

    const-string v1, "getFilePathFromUri cursor null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private updateSelectionMode()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v4, "GalleryPickerViewAdapter"

    const-string v5, "updateSelectionMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$800()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$900(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$900(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$900(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mSelectedItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$900(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    monitor-exit v5

    return-object v2

    :cond_3
    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "GalleryPickerViewAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file is not exist, removedUris is added [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_4
    :try_start_1
    const-string v6, "GalleryPickerViewAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filePath is null or empty, removedUris is added ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
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

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->updateSelectionMode()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->onCancelled(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onCancelled(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$1000(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;->onSelectionChanged(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$1000(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$SelectionChangeListener;->onSelectionChanged(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$UpdateSelectionTask;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
