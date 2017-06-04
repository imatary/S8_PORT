.class public Lcom/sec/android/gallery3d/data/UnlockImage;
.super Lcom/sec/android/gallery3d/data/ActionImage;
.source "UnlockImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlockImage"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/data/ActionImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/UnlockImage;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/UnlockImage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnlockImage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/UnlockImage;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnlockImage;->getNaviHeight()I

    move-result v0

    return v0
.end method

.method private getNaviHeight()I
    .locals 6

    const/4 v0, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnlockImage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnlockImage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public getRotation()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnlockImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x5a

    goto :goto_0
.end method

.method public getSupportedOperations()J
    .locals 4

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/ActionImage;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/data/UnlockImage$BitmapJob;-><init>(Lcom/sec/android/gallery3d/data/UnlockImage;I)V

    return-object v0
.end method
