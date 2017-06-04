.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseWfd;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseWfd"
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
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/WfdSupportedModeFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/WfdSupportedModeFactory;-><init>()V

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/WfdSupportedModeInterface;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/WfdSupportedModeInterface;->getWfdSupported()Z

    move-result v2

    return v2
.end method
