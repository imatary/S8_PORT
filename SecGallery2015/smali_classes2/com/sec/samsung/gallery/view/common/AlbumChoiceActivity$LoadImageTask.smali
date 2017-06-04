.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;
.super Ljava/lang/Object;
.source "AlbumChoiceActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHolder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

.field private final mPosition:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;ILcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mPosition:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v9, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iget v7, v7, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->position:I

    iget v8, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mPosition:I

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_CREATE_ALBUM_TOP:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mPosition:I

    add-int/lit8 v7, v7, -0x1

    :goto_0
    aget-object v6, v8, v7

    if-nez v6, :cond_1

    const/4 v7, 0x0

    :goto_1
    return-object v7

    :cond_0
    iget v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mPosition:I

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v6, v9, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    :try_start_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # invokes: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getThumbnailType()I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2700(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v8

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_FACE_THUMBNAIL_ENABLED:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2800()Z

    move-result v9

    invoke-static {v1, v4, v7, v8, v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropProcess(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;IIZ)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move-object v7, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "AlbumChoiceActivity"

    const-string/jumbo v8, "NullPointerException : bitmap reload failed\n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string/jumbo v7, "AlbumChoiceActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # invokes: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getThumbnailType()I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2700(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v8

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_FACE_THUMBNAIL_ENABLED:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2800()Z

    move-result v9

    invoke-static {v1, v4, v7, v8, v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropProcess(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;IIZ)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v7, "AlbumChoiceActivity"

    const-string/jumbo v8, "NullPointerException : bitmap reload failed\n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v7

    if-eqz v1, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v9

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_FACE_THUMBNAIL_ENABLED:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2800()Z

    move-result v10

    invoke-static {v1, v4, v8, v9, v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropProcess(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;IIZ)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iget-object v8, v8, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iget-object v8, v8, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    throw v7

    :cond_5
    const-string/jumbo v8, "AlbumChoiceActivity"

    const-string/jumbo v9, "NullPointerException : bitmap reload failed\n"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$LoadImageTask;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
