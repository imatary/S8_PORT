.class final Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$1;
.super Ljava/lang/Object;
.source "AbstractFilterTagCollector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;
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
        "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)I
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$1;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTransTagText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTransTagText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    check-cast p2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$1;->compare(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)I

    move-result v0

    return v0
.end method
