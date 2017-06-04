.class public Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;
.super Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;
.source "NearbyVideo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NearbyVideo"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/Device;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/Device;)V

    return-void
.end method


# virtual methods
.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getNearbyUri()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item;->getThumbnail()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSeedString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor;->extract(Lcom/samsung/android/allshare/Item;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getSeedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
