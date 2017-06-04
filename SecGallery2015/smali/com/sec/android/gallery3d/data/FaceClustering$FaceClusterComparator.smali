.class Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;
.super Ljava/lang/Object;
.source "FaceClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/FaceClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceClusterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gallery3d/data/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private mSortTypeValue:I

.field private final pathTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;->mSortTypeValue:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;->pathTimeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sort_by_type_time"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;->mSortTypeValue:I

    :cond_0
    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/Path;)I
    .locals 13

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;->pathTimeMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;->pathTimeMap:Ljava/util/HashMap;

    invoke-virtual {v11, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    iget v11, v6, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->recommendedId:I

    if-le v11, v9, :cond_1

    iget v11, v6, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->recommendedId:I

    iget v12, v6, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->personId:I

    if-ne v11, v12, :cond_1

    move v4, v9

    :goto_0
    iget v11, v7, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->recommendedId:I

    if-le v11, v9, :cond_2

    iget v11, v7, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->recommendedId:I

    iget v12, v7, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->personId:I

    if-ne v11, v12, :cond_2

    move v5, v9

    :goto_1
    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    const/4 v9, -0x1

    :cond_0
    :goto_2
    return v9

    :cond_1
    move v4, v10

    goto :goto_0

    :cond_2
    move v5, v10

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_0

    :cond_4
    if-eqz v6, :cond_5

    iget-wide v0, v6, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->date:J

    :cond_5
    if-eqz v7, :cond_6

    iget-wide v2, v7, Lcom/sec/android/gallery3d/data/FaceClustering$OrderingData;->date:J

    :cond_6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v9

    neg-int v8, v9

    if-eqz v8, :cond_7

    iget v9, p0, Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;->mSortTypeValue:I

    mul-int/2addr v9, v8

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    iget v10, p0, Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;->mSortTypeValue:I

    mul-int/2addr v9, v10

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/Path;

    check-cast p2, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/FaceClustering$FaceClusterComparator;->compare(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    return v0
.end method
