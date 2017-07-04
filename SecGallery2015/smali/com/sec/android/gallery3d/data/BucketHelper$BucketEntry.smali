.class Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/BucketHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BucketEntry"
.end annotation


# instance fields
.field final bucketId:I

.field final bucketName:Ljava/lang/String;

.field bucketPath:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_DIR:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_DIR:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_DIR:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStorageName(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    invoke-static {p3}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->getFolderpathFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/BucketHelper;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDCIMName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    iget v2, p0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget v3, v0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    return v0
.end method
