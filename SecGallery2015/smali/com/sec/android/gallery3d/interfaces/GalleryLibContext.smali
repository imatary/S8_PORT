.class public Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;
.super Ljava/lang/Object;
.source "GalleryLibContext.java"

# interfaces
.implements Lcom/sec/android/gallery3d/interfaces/LibraryContext;


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mController:Lcom/sec/android/gallery3d/interfaces/LibraryController;

.field private mModel:Lcom/sec/android/gallery3d/interfaces/LibraryModel;

.field private mView:Lcom/sec/android/gallery3d/interfaces/LibraryView;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method public getAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v0

    return-object v0
.end method

.method public getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    return-object v0
.end method

.method public getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mController:Lcom/sec/android/gallery3d/interfaces/LibraryController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mController:Lcom/sec/android/gallery3d/interfaces/LibraryController;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mController:Lcom/sec/android/gallery3d/interfaces/LibraryController;

    return-object v0
.end method

.method public getDecoderInterface()Lcom/sec/samsung/gallery/decoder/DecoderInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDecoderInterface()Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    move-result-object v0

    return-object v0
.end method

.method public getFlipAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getFlipAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v0

    return-object v0
.end method

.method public getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    return-object v0
.end method

.method public getGalleryCoverMode()Lcom/sec/android/gallery3d/app/GalleryCoverMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCoverMode()Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v0

    return-object v0
.end method

.method public getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mModel:Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/interfaces/GalleryLibModel;

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/interfaces/GalleryLibModel;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mModel:Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mModel:Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    return-object v0
.end method

.method public getMultiwindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    return-object v0
.end method

.method public getResourceContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method public getSelectionManager()Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mView:Lcom/sec/android/gallery3d/interfaces/LibraryView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/interfaces/GalleryLibView;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mView:Lcom/sec/android/gallery3d/interfaces/LibraryView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mView:Lcom/sec/android/gallery3d/interfaces/LibraryView;

    return-object v0
.end method

.method public hidePreDisplayScreen()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    return-void
.end method

.method public inExpansionMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    return v0
.end method

.method public isPreDisplayScreenNailVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibContext;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isPreDisplayScreenNailVisible()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
