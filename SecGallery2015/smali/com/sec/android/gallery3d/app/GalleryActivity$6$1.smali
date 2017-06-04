.class Lcom/sec/android/gallery3d/app/GalleryActivity$6$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/GalleryActivity$6;->postGalleryRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/app/GalleryActivity$6;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/GalleryActivity$6;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$6$1;->this$1:Lcom/sec/android/gallery3d/app/GalleryActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$6$1;->this$1:Lcom/sec/android/gallery3d/app/GalleryActivity$6;

    iget-object v2, v2, Lcom/sec/android/gallery3d/app/GalleryActivity$6;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->RUN:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$6$1;->this$1:Lcom/sec/android/gallery3d/app/GalleryActivity$6;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/GalleryActivity$6;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "POST_GALLERY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
