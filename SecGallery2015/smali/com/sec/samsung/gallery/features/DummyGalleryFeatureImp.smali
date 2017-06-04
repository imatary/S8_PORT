.class public Lcom/sec/samsung/gallery/features/DummyGalleryFeatureImp;
.super Ljava/lang/Object;
.source "DummyGalleryFeatureImp.java"

# interfaces
.implements Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;


# instance fields
.field private sEnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/samsung/gallery/features/FeatureNames;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/features/DummyGalleryFeatureImp;->sEnableMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/features/DummyGalleryFeatureImp;->sEnableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/features/DummyGalleryFeatureImp;->sEnableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/DummyGalleryFeatureImp;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/features/DummyGalleryFeatureImp;->sEnableMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public setEnable(Lcom/sec/samsung/gallery/features/FeatureNames;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/features/DummyGalleryFeatureImp;->sEnableMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
