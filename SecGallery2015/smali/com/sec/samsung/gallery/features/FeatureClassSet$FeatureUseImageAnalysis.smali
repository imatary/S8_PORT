.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseImageAnalysis;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseImageAnalysis"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabled(Landroid/content/Context;)Z
    .locals 5

    const-string/jumbo v4, "com.samsung.android.visioncloudagent"

    invoke-static {p1, v4}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;-><init>()V

    invoke-interface {v3, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_GALLERY_SUPPORT_VISION_CLOUD_AGENT"

    invoke-interface {v0, v4}, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
