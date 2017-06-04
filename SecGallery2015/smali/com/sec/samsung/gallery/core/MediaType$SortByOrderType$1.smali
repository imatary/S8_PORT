.class final enum Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType$1;
.super Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;-><init>(Ljava/lang/String;ILcom/sec/samsung/gallery/core/MediaType$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, " ASC "

    return-object v0
.end method
