.class Lcom/sec/android/gallery3d/data/UnionLocalVideo$DeleteOperation;
.super Ljava/lang/Object;
.source "UnionLocalVideo.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/dboperation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UnionLocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/UnionLocalVideo;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/UnionLocalVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/UnionLocalVideo;Lcom/sec/android/gallery3d/data/UnionLocalVideo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/UnionLocalVideo$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/UnionLocalVideo;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->mIsDeleted:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->cloudServerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->mIsMoving:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    iget-object v1, v1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->cloudServerId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->deleteByServerId(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->mIsMoving:Z

    return v2
.end method
