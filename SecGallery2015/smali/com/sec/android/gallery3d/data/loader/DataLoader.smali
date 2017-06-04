.class public interface abstract Lcom/sec/android/gallery3d/data/loader/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"


# static fields
.field public static final FILTER_ALBUM_HIDE:I = 0x1


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getRangePath(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract indexOf(Lcom/sec/android/gallery3d/data/Path;)I
.end method

.method public abstract load(II)Z
.end method

.method public abstract loadAll()Z
.end method
