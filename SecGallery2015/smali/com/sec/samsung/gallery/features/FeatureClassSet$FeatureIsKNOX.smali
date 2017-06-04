.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsKNOX;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureIsKNOX"
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

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/lib/libinterface/PersonaManagerInterface;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "isKnoxMode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method
