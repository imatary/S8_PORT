.class Lcom/sec/android/gallery3d/data/EventAlbumManager$5;
.super Ljava/lang/Object;
.source "EventAlbumManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateCurLocality(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

.field final synthetic val$curLocation:Landroid/location/Location;

.field final synthetic val$reverseGeocoder:Lcom/sec/android/gallery3d/util/ReverseGeocoder;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;Lcom/sec/android/gallery3d/util/ReverseGeocoder;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$5;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$5;->val$reverseGeocoder:Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$5;->val$curLocation:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$5;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$5;->val$reverseGeocoder:Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$5;->val$curLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$5;->val$curLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->getLocality(DD)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->access$402(Lcom/sec/android/gallery3d/data/EventAlbumManager;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
