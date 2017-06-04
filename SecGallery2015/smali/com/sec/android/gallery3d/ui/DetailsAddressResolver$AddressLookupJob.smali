.class Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressLookupJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLatlng:[D

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;[D)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->this$0:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/location/Address;
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->this$0:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    # getter for: Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->access$000(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;)Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    aget-wide v4, v0, v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method
