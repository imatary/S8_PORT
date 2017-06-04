.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSecureFolder;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseSecureFolder"
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

    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/PersonaManagerFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/PersonaManagerFactory;-><init>()V

    invoke-interface {v2, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/PersonaManagerInterface;

    const-string/jumbo v3, "isSupportSecureFolder"

    invoke-interface {v1, p1, v3}, Lcom/sec/samsung/gallery/lib/libinterface/PersonaManagerInterface;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "isSupportSecureFolder"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "FeatureClassSet"

    const-string/jumbo v4, "Secure folder is available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const-string/jumbo v3, "FeatureClassSet"

    const-string/jumbo v4, "Secure folder is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method
