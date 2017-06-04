.class Lcom/sec/android/gallery3d/app/GalleryActivity$2;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/GalleryActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->onBackPressed()V

    return-void
.end method
