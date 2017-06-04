.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;
.super Ljava/lang/Object;
.source "SlideShowBeam.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideShowBeam"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method


# virtual methods
.method public setBeamListener()V
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam$1;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;)V

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "ANDROID_BEAM"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
