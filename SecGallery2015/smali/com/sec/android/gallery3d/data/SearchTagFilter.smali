.class public interface abstract Lcom/sec/android/gallery3d/data/SearchTagFilter;
.super Ljava/lang/Object;
.source "SearchTagFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;
    }
.end annotation


# virtual methods
.method public abstract getCategory()Ljava/lang/String;
.end method

.method public abstract getExistFilterMask()I
.end method

.method public abstract getFilterList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFromTimeInfo()Ljava/lang/String;
.end method

.method public abstract getLocationType()I
.end method

.method public abstract getPersonName()Ljava/lang/String;
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method
