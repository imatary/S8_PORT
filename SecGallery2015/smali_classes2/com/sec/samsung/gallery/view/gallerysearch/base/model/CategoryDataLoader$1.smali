.class final Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$1;
.super Ljava/lang/Object;
.source "CategoryDataLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)I
    .locals 2

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    check-cast p2, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$1;->compare(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)I

    move-result v0

    return v0
.end method
