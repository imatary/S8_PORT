.class public Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;
.super Ljava/lang/Object;
.source "GallerySearchTagFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Filter"
.end annotation


# instance fields
.field public mCategoryType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mOjbectMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mCategoryType:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mOjbectMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mCategoryType:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mOjbectMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->addTag(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->addTag(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->removeTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->getCount()I

    move-result v0

    return v0
.end method

.method private addTag(Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mCategoryType:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private addTag(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mOjbectMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mCategoryType:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private removeTag(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mOjbectMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mCategoryType:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method
