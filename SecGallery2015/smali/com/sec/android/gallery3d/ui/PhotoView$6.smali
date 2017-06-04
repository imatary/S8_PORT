.class Lcom/sec/android/gallery3d/ui/PhotoView$6;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;->initHorizontalNavigationButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$6;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$6;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$6;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->previousImage()Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$6;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # invokes: Lcom/sec/android/gallery3d/ui/PhotoView;->refreshHidingMessage()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2300(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    return-void
.end method
