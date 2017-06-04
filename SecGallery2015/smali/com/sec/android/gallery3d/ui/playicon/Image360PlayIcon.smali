.class public Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "Image360PlayIcon.java"


# static fields
.field private static final FEATURE_USE_DEVICE_COG:Z


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->FEATURE_USE_DEVICE_COG:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mActivity:Landroid/app/Activity;

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->IMAGE360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f020170

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mIconResId:I

    const v0, 0x7f0a01fd

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4034"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 8

    const v7, 0x7f0a0585

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseImage360Viewer:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aput-object v3, v1, v5

    aput-object p1, v1, v6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "IMAGE_360_VIEWER"

    invoke-virtual {v3, v4, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v3, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mActivity:Landroid/app/Activity;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v7, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "360PhotoViewer"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v4, v5, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v3, Lcom/sec/samsung/gallery/controller/Play360Content;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/controller/Play360Content;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/controller/Play360Content;->execute(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    sget-boolean v3, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mActivity:Landroid/app/Activity;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v7, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "360PhotoViewer"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v4, v5, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a0584

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/playicon/Image360PlayIcon;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "360PhotoViewer"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v4, v5, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method
