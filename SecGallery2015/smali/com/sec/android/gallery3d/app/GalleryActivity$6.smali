.class Lcom/sec/android/gallery3d/app/GalleryActivity$6;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/GalleryActivity;->addGLIdleListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/GalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$6;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private postGalleryRun()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$6;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    new-instance v1, Lcom/sec/android/gallery3d/app/GalleryActivity$6$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/app/GalleryActivity$6$1;-><init>(Lcom/sec/android/gallery3d/app/GalleryActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$6;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryActivity$6;->postGalleryRun()V

    return-void
.end method
