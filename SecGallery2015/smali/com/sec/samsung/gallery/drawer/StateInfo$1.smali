.class final Lcom/sec/samsung/gallery/drawer/StateInfo$1;
.super Landroid/util/SparseArray;
.source "StateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/drawer/StateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/sec/samsung/gallery/drawer/StateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    const-class v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v3, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    const v5, 0x7f0a0332

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/drawer/StateInfo;-><init>(Ljava/lang/Class;Lcom/sec/samsung/gallery/core/TabTagType;Lcom/sec/samsung/gallery/core/ViewByFilterType;IILcom/sec/samsung/gallery/drawer/StateInfo$1;)V

    invoke-virtual {p0, v4, v0}, Lcom/sec/samsung/gallery/drawer/StateInfo$1;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    const-class v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v3, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    const v5, 0x7f0a043f

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/drawer/StateInfo;-><init>(Ljava/lang/Class;Lcom/sec/samsung/gallery/core/TabTagType;Lcom/sec/samsung/gallery/core/ViewByFilterType;IILcom/sec/samsung/gallery/drawer/StateInfo$1;)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/samsung/gallery/drawer/StateInfo$1;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v3, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    const v5, 0x7f0a0441

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/drawer/StateInfo;-><init>(Ljava/lang/Class;Lcom/sec/samsung/gallery/core/TabTagType;Lcom/sec/samsung/gallery/core/ViewByFilterType;IILcom/sec/samsung/gallery/drawer/StateInfo$1;)V

    invoke-virtual {p0, v8, v0}, Lcom/sec/samsung/gallery/drawer/StateInfo$1;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    const-class v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v3, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    const v5, 0x7f0a03c0

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/drawer/StateInfo;-><init>(Ljava/lang/Class;Lcom/sec/samsung/gallery/core/TabTagType;Lcom/sec/samsung/gallery/core/ViewByFilterType;IILcom/sec/samsung/gallery/drawer/StateInfo$1;)V

    invoke-virtual {p0, v9, v0}, Lcom/sec/samsung/gallery/drawer/StateInfo$1;->put(ILjava/lang/Object;)V

    return-void
.end method
