.class Lcom/sec/android/gallery3d/data/FestivalClustering$DateComparator;
.super Ljava/lang/Object;
.source "FestivalClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/FestivalClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gallery3d/data/SmallItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/FestivalClustering;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/FestivalClustering;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FestivalClustering$DateComparator;->this$0:Lcom/sec/android/gallery3d/data/FestivalClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/FestivalClustering;Lcom/sec/android/gallery3d/data/FestivalClustering$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/FestivalClustering$DateComparator;-><init>(Lcom/sec/android/gallery3d/data/FestivalClustering;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/SmallItem;Lcom/sec/android/gallery3d/data/SmallItem;)I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FestivalClustering$DateComparator;->this$0:Lcom/sec/android/gallery3d/data/FestivalClustering;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/FestivalClustering;->access$000(Lcom/sec/android/gallery3d/data/FestivalClustering;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getSortByType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v2, p2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v2, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/SmallItem;

    check-cast p2, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/FestivalClustering$DateComparator;->compare(Lcom/sec/android/gallery3d/data/SmallItem;Lcom/sec/android/gallery3d/data/SmallItem;)I

    move-result v0

    return v0
.end method
