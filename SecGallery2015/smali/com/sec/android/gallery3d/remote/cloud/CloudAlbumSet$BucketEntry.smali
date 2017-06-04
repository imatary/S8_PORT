.class Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;
.super Ljava/lang/Object;
.source "CloudAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BucketEntry"
.end annotation


# instance fields
.field public final bucketId:I

.field public final bucketIdString:Ljava/lang/String;

.field public final bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;->bucketId:I

    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;

    invoke-static {p3}, Lcom/sec/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;->bucketIdString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;

    iget v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;->bucketId:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;->bucketId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;->bucketId:I

    return v0
.end method
