.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache$RetainFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCache"


# instance fields
.field private final Lock:Ljava/lang/Object;

.field private mReusableBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;->Lock:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;->init()V

    return-void
.end method

.method private static canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache$RetainFragment;
    .locals 3

    const-string/jumbo v1, "ImageCache"

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache$RetainFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache$RetainFragment;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache$RetainFragment;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "ImageCache"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;-><init>()V

    return-object v0
.end method

.method public static getInstance(Landroid/support/v4/app/FragmentManager;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;
    .locals 2

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;->findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache$RetainFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;-><init>()V

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;->mReusableBitmaps:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method getBitmapFromReusableSet(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;->mReusableBitmaps:Ljava/util/Set;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;->mReusableBitmaps:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;->Lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;->mReusableBitmaps:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageCache;->canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_1
    monitor-exit v4

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
