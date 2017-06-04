.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseAlbumCopyMove;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseAlbumCopyMove"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabled(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
