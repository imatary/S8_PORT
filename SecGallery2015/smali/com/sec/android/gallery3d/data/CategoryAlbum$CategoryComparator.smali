.class Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryComparator;
.super Ljava/lang/Object;
.source "CategoryAlbum.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/CategoryAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mSortTypeValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryComparator;->mSortTypeValue:I

    const-string/jumbo v1, "sort_by_type_time"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryComparator;->mSortTypeValue:I

    :cond_0
    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;)I
    .locals 6

    iget-object v1, p1, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;->mDate:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p2, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;->mDate:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    neg-int v0, v1

    if-nez v0, :cond_0

    iget v1, p1, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;->mID:I

    iget v2, p2, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;->mID:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :cond_0
    iget v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryComparator;->mSortTypeValue:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;

    check-cast p2, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryComparator;->compare(Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;)I

    move-result v0

    return v0
.end method
