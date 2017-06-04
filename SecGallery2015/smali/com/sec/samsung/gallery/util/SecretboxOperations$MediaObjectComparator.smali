.class Lcom/sec/samsung/gallery/util/SecretboxOperations$MediaObjectComparator;
.super Ljava/lang/Object;
.source "SecretboxOperations.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/SecretboxOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaObjectComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x52cbbe4c250ea9b0L


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/util/SecretboxOperations$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/SecretboxOperations$MediaObjectComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/MediaObject;)I
    .locals 6

    const/4 v4, 0x0

    instance-of v5, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_1

    instance-of v5, p2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    :cond_0
    :goto_0
    return v4

    :cond_1
    instance-of v5, p1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_0

    instance-of v5, p2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v4, -0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/util/SecretboxOperations$MediaObjectComparator;->compare(Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/MediaObject;)I

    move-result v0

    return v0
.end method
