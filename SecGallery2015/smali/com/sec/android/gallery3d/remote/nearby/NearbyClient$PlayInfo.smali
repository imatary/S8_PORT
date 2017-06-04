.class Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;
.super Ljava/lang/Object;
.source "NearbyClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayInfo"
.end annotation


# instance fields
.field public final item:Lcom/sec/android/gallery3d/data/MediaItem;

.field public final mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field public final viewer:Lcom/samsung/android/allshare/media/ImageViewer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/allshare/media/ImageViewer;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;->viewer:Lcom/samsung/android/allshare/media/ImageViewer;

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;->mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method
