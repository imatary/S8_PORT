.class Lcom/sec/samsung/gallery/util/KNOXOperations$MediaObjectComparator;
.super Ljava/lang/Object;
.source "KNOXOperations.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/KNOXOperations;
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
.field private static final serialVersionUID:J = -0x674f852f69670d0bL


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/util/KNOXOperations$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/KNOXOperations$MediaObjectComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/MediaObject;)I
    .locals 8

    const/4 v3, 0x0

    instance-of v6, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v6, :cond_3

    instance-of v6, p2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v6, :cond_3

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    sub-int/2addr v3, v2

    :cond_1
    :goto_1
    return v3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    instance-of v6, p1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_1

    instance-of v6, p2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    check-cast p2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v3, v6, v7

    goto :goto_1

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_5
    const-string/jumbo v1, ""

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/util/KNOXOperations$MediaObjectComparator;->compare(Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/MediaObject;)I

    move-result v0

    return v0
.end method
