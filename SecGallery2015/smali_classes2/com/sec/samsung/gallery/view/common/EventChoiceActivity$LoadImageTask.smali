.class Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;
.super Ljava/lang/Object;
.source "EventChoiceActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;
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
.field private final mHolder:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

.field private final mPosition:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;ILcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mPosition:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    iget v6, v6, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->position:I

    iget v7, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mPosition:I

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mChannelAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2500(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->IS_CREATE_ALBUM_TOP:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2000()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mPosition:I

    add-int/lit8 v6, v6, -0x1

    :goto_0
    aget-object v5, v7, v6

    if-nez v5, :cond_1

    const/4 v6, 0x0

    :goto_1
    return-object v6

    :cond_0
    iget v6, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mPosition:I

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)I

    move-result v7

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_FACE_THUMBNAIL_ENABLED:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2600()Z

    move-result v8

    invoke-static {v1, v4, v6, v7, v8}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropProcess(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;IIZ)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move-object v6, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "EventChoiceActivity"

    const-string/jumbo v7, "NullPointerException : bitmap reload failed\n"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string/jumbo v6, "EventChoiceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)I

    move-result v7

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_FACE_THUMBNAIL_ENABLED:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2600()Z

    move-result v8

    invoke-static {v1, v4, v6, v7, v8}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropProcess(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;IIZ)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v6, "EventChoiceActivity"

    const-string/jumbo v7, "NullPointerException : bitmap reload failed\n"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v6

    if-eqz v1, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAlbumFrameSize:I
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)I

    move-result v8

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->FEATURE_FACE_THUMBNAIL_ENABLED:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2600()Z

    move-result v9

    invoke-static {v1, v4, v7, v8, v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropProcess(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;IIZ)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->mHolder:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    throw v6

    :cond_5
    const-string/jumbo v7, "EventChoiceActivity"

    const-string/jumbo v8, "NullPointerException : bitmap reload failed\n"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$LoadImageTask;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
