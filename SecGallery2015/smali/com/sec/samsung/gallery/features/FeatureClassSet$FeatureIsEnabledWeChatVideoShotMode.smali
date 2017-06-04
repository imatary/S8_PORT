.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsEnabledWeChatVideoShotMode;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureIsEnabledWeChatVideoShotMode"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x0

    new-instance v4, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;-><init>()V

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;

    const-string/jumbo v4, "CscFeature_Common_SupportWechatSightMode"

    invoke-interface {v1, v4}, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string/jumbo v4, "com.tencent.mm"

    invoke-static {p1, v4}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method
