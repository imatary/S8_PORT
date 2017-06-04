.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureEnableFreeMessage;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureEnableFreeMessage"
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

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;-><init>()V

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;

    const-string/jumbo v3, "CscFeature_Message_ConfigFreeMessage"

    const-string/jumbo v4, "on"

    invoke-interface {v0, v3, v4}, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method
