.class public Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlFloatingFeatureWrapper;
.super Ljava/lang/Object;
.source "SdlFloatingFeatureWrapper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/libinterface/FloatingFeatureInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
