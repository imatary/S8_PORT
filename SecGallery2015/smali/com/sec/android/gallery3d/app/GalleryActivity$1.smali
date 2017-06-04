.class Lcom/sec/android/gallery3d/app/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/GalleryActivity;
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateInPauseState()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$000(Lcom/sec/android/gallery3d/app/GalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
