.class public Lcom/sec/android/gallery3d/data/AlbumSetControl;
.super Ljava/lang/Object;
.source "AlbumSetControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;,
        Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;
    }
.end annotation


# instance fields
.field private mAlbumSetDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl;->mAlbumSetDataList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl;->mAlbumSetDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V
    .locals 7

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl;->mAlbumSetDataList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;-><init>(Lcom/sec/android/gallery3d/data/AlbumSetControl;ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAlbumSetDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AlbumSetControl;->mAlbumSetDataList:Ljava/util/ArrayList;

    return-object v0
.end method
