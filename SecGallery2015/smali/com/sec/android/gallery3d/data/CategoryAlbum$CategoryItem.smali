.class Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;
.super Ljava/lang/Object;
.source "CategoryAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/CategoryAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryItem"
.end annotation


# instance fields
.field final mDate:Ljava/lang/Long;

.field final mID:I

.field final mPath:Lcom/sec/android/gallery3d/data/Path;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;->mDate:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;->mID:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;Lcom/sec/android/gallery3d/data/CategoryAlbum$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;)V

    return-void
.end method
