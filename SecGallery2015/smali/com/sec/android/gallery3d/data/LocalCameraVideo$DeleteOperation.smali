.class Lcom/sec/android/gallery3d/data/LocalCameraVideo$DeleteOperation;
.super Ljava/lang/Object;
.source "LocalCameraVideo.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/dboperation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalCameraVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/LocalCameraVideo;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/LocalCameraVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalCameraVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/LocalCameraVideo;Lcom/sec/android/gallery3d/data/LocalCameraVideo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraVideo$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/LocalCameraVideo;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalCameraVideo;

    # setter for: Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mIsDeleted:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->access$102(Lcom/sec/android/gallery3d/data/LocalCameraVideo;Z)Z

    return v1
.end method
