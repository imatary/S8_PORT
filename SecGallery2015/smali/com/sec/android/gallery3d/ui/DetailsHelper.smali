.class public Lcom/sec/android/gallery3d/ui/DetailsHelper;
.super Ljava/lang/Object;
.source "DetailsHelper.java"


# static fields
.field private static sAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddress()Landroid/location/Address;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->getAddress()Landroid/location/Address;

    move-result-object v0

    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->cancel()V

    :cond_0
    return-void
.end method

.method public static resolveAddress(Lcom/sec/android/gallery3d/interfaces/LibraryContext;[DLcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    :goto_0
    sget-object v0, Lcom/sec/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->resolveAddress([DLcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->cancel()V

    goto :goto_0
.end method
