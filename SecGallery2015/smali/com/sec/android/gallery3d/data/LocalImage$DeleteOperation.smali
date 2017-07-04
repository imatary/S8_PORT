.class Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;
.super Ljava/lang/Object;
.source "LocalImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/dboperation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/LocalImage;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/LocalImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/LocalImage;Lcom/sec/android/gallery3d/data/LocalImage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/LocalImage;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 8

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    iget v2, v2, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->deleteImageCropRectInCache(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalImage;->access$700()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    iget v3, v3, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/face/FaceList;->removeFaceByFileId(Landroid/content/Context;I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->isArcMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2, v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->setRefreshOperation(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->access$800(Lcom/sec/android/gallery3d/data/LocalImage;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v3, v2, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v5, v5, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Face;->getFaceId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/access/face/FaceList;->remove(Landroid/content/Context;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->access$900(Lcom/sec/android/gallery3d/data/LocalImage;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/Path;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/LocalImage;->access$800(Lcom/sec/android/gallery3d/data/LocalImage;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/LocalImage;->access$800(Lcom/sec/android/gallery3d/data/LocalImage;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/data/LocalImage;->access$802(Lcom/sec/android/gallery3d/data/LocalImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->access$1000(Lcom/sec/android/gallery3d/data/LocalImage;)V

    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setVersion()V

    return v7
.end method
