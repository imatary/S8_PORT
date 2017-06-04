.class public Lcom/sec/samsung/gallery/lib/se/SeMediaMetadataRetriever;
.super Ljava/lang/Object;
.source "SeMediaMetadataRetriever.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameAtTime(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/MediaMetadataRetriever;->semGetFrameAtTime(JII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
