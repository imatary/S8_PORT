.class Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;
.super Ljava/lang/Thread;
.source "ReverseGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZZZ)Landroid/location/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/util/ReverseGeocoder;

.field final synthetic val$latitude:D

.field final synthetic val$locationKey:J

.field final synthetic val$longitude:D


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/util/ReverseGeocoder;Ljava/lang/String;DDJ)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;->this$0:Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    iput-wide p3, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;->val$latitude:D

    iput-wide p5, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;->val$longitude:D

    iput-wide p7, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;->val$locationKey:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;->this$0:Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    iget-wide v2, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;->val$latitude:D

    iget-wide v4, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;->val$longitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$1;->val$locationKey:J

    # invokes: Lcom/sec/android/gallery3d/util/ReverseGeocoder;->insertGeoCache(DDJ)V
    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->access$000(Lcom/sec/android/gallery3d/util/ReverseGeocoder;DDJ)V

    return-void
.end method
