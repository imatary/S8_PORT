.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsWifiOnlyModel;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureIsWifiOnlyModel"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/features/Feature;-><init>(Lcom/sec/samsung/gallery/features/Feature$FeatureType;)V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ConnectivityManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ConnectivityManagerFactory;-><init>()V

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/ConnectivityManagerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/ConnectivityManagerInterface;->isNetworkSupported(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
