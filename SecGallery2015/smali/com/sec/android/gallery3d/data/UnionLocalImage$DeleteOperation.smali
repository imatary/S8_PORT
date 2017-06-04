.class Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;
.super Ljava/lang/Object;
.source "UnionLocalImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/dboperation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UnionLocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/UnionLocalImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/UnionLocalImage;Lcom/sec/android/gallery3d/data/UnionLocalImage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/UnionLocalImage;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mediaId:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->deleteImageCropRectInCache(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->isArcMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2, v8}, Lcom/sec/android/gallery3d/app/GalleryApp;->setRefreshOperation(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    # getter for: Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->access$300(Lcom/sec/android/gallery3d/data/UnionLocalImage;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v4, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v6, v6, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Face;->getFaceId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/access/face/FaceList;->remove(Landroid/content/Context;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    # getter for: Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->access$400(Lcom/sec/android/gallery3d/data/UnionLocalImage;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    # getter for: Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->access$300(Lcom/sec/android/gallery3d/data/UnionLocalImage;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    # getter for: Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->access$300(Lcom/sec/android/gallery3d/data/UnionLocalImage;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->access$302(Lcom/sec/android/gallery3d/data/UnionLocalImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    # invokes: Lcom/sec/android/gallery3d/data/UnionLocalImage;->deleteDngFile()V
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->access$500(Lcom/sec/android/gallery3d/data/UnionLocalImage;)V

    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setVersion()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-boolean v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsMoving:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->cloudServerId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->cloudServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-object v4, v4, Lcom/sec/android/gallery3d/data/UnionLocalImage;->cloudServerId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->deleteByServerId(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iput-boolean v3, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsMoving:Z

    return v8
.end method
