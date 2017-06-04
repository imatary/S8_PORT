.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;
.super Ljava/lang/Object;
.source "ImageMetaList.java"


# instance fields
.field protected imglist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;->imglist:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public setImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;->imglist:Ljava/util/List;

    return-void
.end method
