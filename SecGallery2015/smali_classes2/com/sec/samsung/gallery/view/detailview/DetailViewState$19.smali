.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;
.super Landroid/database/ContentObserver;
.source "DetailViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

.field final synthetic val$currentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/os/Handler;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->val$currentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->val$currentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/LocalImage;->isFaceInfoDeleted()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v7, 0x0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v2, v9, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v5, "datetaken DESC, _id DESC"

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v6, "DetailViewState"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DetailViewState"

    const-string/jumbo v2, "onChange, cursor.getCount() is 0"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9, v7}, Lcom/sec/android/gallery3d/data/LocalImage;->isFileModified(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/LocalImage;->deleteFaceInfo()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->onBackPressed()V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isFaceInfoDeleted()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v7, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getCMHFileId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v5, "datetaken DESC, _id DESC"

    :try_start_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v6, "DetailViewState"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "DetailViewState"

    const-string/jumbo v2, "onChange, cursor.getCount() is 0"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10, v7}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isFileModified(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    :cond_6
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_7
    if-eqz v8, :cond_3

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->deleteFaceInfo()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$19;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->onBackPressed()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method
