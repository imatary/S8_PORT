.class Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;
.super Ljava/lang/Object;
.source "DetailViewBeam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DetailViewBeam"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mObserver:Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;->mObserver:Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method


# virtual methods
.method registerSettingObserver()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;->mObserver:Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;->register()V

    return-void
.end method

.method public setBeamListener()V
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;)V

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "ANDROID_BEAM"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method unregisterSettingObserver()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;->mObserver:Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;->unregister()V

    return-void
.end method
