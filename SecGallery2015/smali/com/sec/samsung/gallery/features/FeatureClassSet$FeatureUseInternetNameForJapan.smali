.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseInternetNameForJapan;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseInternetNameForJapan"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 3

    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;-><init>()V

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;

    const-string/jumbo v2, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method
