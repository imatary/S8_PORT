.class public Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;
.super Lcom/sec/android/gallery3d/ui/ButtonIconView;
.source "DeviceToTVIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVDisconnectIcon;,
        Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"


# instance fields
.field private mConnectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

.field private mDisconnectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/ButtonIconView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->getNavigationPadding()I

    move-result v0

    return v0
.end method

.method private getConnectIcon()Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mConnectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVConnectIcon;-><init>(Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mConnectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mConnectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    return-object v0
.end method

.method private getDisconnectIcon()Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mDisconnectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVDisconnectIcon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$TVDisconnectIcon;-><init>(Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;Lcom/sec/android/gallery3d/ui/DeviceToTVIconView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mDisconnectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mDisconnectIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    return-object v0
.end method

.method private getNavigationBarHeight()I
    .locals 6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getNavigationPadding()I
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getMultiwindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->getNavigationBarHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setConnected(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->getConnectIcon()Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->mIcon:Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->invalidate()V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->setOffset(IIII)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->getDisconnectIcon()Lcom/sec/android/gallery3d/ui/ButtonIconView$ButtonIcon;

    move-result-object v0

    goto :goto_0
.end method
