.class public Lcom/sec/samsung/gallery/lib/factory/MediaMetadataRetrieverWrapper;
.super Ljava/lang/Object;
.source "MediaMetadataRetrieverWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameAtTime(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/lib/se/SeMediaMetadataRetriever;->getFrameAtTime(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
