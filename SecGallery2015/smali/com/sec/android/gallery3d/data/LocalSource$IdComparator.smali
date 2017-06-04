.class Lcom/sec/android/gallery3d/data/LocalSource$IdComparator;
.super Ljava/lang/Object;
.source "LocalSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/LocalSource$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalSource$IdComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/MediaSource$PathId;Lcom/sec/android/gallery3d/data/MediaSource$PathId;)I
    .locals 5

    iget-object v4, p1, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p2, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/LocalSource$IdComparator;->compare(Lcom/sec/android/gallery3d/data/MediaSource$PathId;Lcom/sec/android/gallery3d/data/MediaSource$PathId;)I

    move-result v0

    return v0
.end method
