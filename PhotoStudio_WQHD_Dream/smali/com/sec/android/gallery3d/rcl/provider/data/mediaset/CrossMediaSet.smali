.class public abstract Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;
.super Ljava/lang/Object;
.source "CrossMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet$MediaSetFactory;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMediaItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaType:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;->mMediaItemList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;->mMediaType:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;->mMediaType:I

    return-void
.end method


# virtual methods
.method public getMediaItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;->mMediaItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract loadData(Z)V
.end method
