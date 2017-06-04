.class Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;
.super Ljava/lang/Object;
.source "MapActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mItemPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$000(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$100(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mItemPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$000(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$300(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mItemPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$000(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mAlbumName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$202(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$200(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$400(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mAlbumName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$200(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v1, 0xc

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$800(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$900(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$1000(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const v4, 0x7f100012

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$1100(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mUseGraceMapViewUI:Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$500(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$600(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0a024d

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->access$700(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0a0248

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method
