.class public abstract Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;
.super Ljava/lang/Object;
.source "AbstractSearchQueryBuilder.java"


# static fields
.field static final mOperation:Ljava/lang/String; = " OR "


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createCategoryClauseForCMH(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;I)Ljava/lang/StringBuilder;
.end method

.method public abstract createEventClause(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/StringBuilder;
.end method

.method public abstract createKeywordClause(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/StringBuilder;
.end method

.method public abstract createLocationClause(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/StringBuilder;
.end method

.method public abstract createPeopleClause(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/StringBuilder;
.end method

.method public abstract createTimeClause(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/StringBuilder;
.end method

.method public abstract createUserTagClause(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;I)Ljava/lang/StringBuilder;
.end method

.method public abstract getTotalQueryClause(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/String;
.end method

.method public abstract getTotalQueryClause(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/gallery3d/data/GallerySearchTagFilter;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/core/SearchFilterType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
