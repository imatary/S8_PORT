.class public Lcom/sec/samsung/gallery/features/GalleryFeature;
.super Ljava/lang/Object;
.source "GalleryFeature.java"


# static fields
.field private static sGalleryFeatureImp:Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/features/GalleryFeature;->sGalleryFeatureImp:Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/features/GalleryFeature;->getGalleryFeatureImp()Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;->clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V

    return-void
.end method

.method private static getGalleryFeatureImp()Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/GalleryFeature;->sGalleryFeatureImp:Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/features/DummyGalleryFeatureImp;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/features/DummyGalleryFeatureImp;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/features/GalleryFeature;->sGalleryFeatureImp:Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/GalleryFeature;->sGalleryFeatureImp:Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/features/GalleryFeature;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/features/GalleryFeature;->sGalleryFeatureImp:Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/features/GalleryFeatureImp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/features/GalleryFeature;->sGalleryFeatureImp:Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/features/GalleryFeature;->getGalleryFeatureImp()Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;->isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/features/GalleryFeature;->getGalleryFeatureImp()Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    return v0
.end method

.method public static setEnable(Lcom/sec/samsung/gallery/features/FeatureNames;Z)V
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/features/GalleryFeature;->getGalleryFeatureImp()Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/samsung/gallery/features/GalleryFeatureInterface;->setEnable(Lcom/sec/samsung/gallery/features/FeatureNames;Z)V

    return-void
.end method
