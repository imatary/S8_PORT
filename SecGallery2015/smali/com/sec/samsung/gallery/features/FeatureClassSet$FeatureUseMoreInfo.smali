.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseMoreInfo;
.super Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureEnable;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseMoreInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureEnable;-><init>(Lcom/sec/samsung/gallery/features/FeatureClassSet$1;)V

    return-void
.end method
