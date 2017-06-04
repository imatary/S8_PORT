.class Lcom/sec/android/gallery3d/util/MediaSetUtils$NameComparator;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/util/MediaSetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaSet;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/util/MediaSetUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/MediaSetUtils$NameComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/util/MediaSetUtils$NameComparator;->compare(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    return v0
.end method
