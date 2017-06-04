.class Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$1;
.super Ljava/lang/Object;
.source "UriMediaMMSAlbumSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$1;->this$0:Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;)I
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->getDate()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->getDate()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;

    check-cast p2, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$1;->compare(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;)I

    move-result v0

    return v0
.end method
