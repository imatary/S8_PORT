.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsCMCCModel;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureIsCMCCModel"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "CHM"

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
