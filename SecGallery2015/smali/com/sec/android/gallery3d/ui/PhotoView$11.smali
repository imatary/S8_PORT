.class Lcom/sec/android/gallery3d/ui/PhotoView$11;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;->getImageView()Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

.field final synthetic val$dragView:Landroid/view/View;

.field final synthetic val$mainView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$11;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$11;->val$mainView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$11;->val$dragView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$11;->val$mainView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$11;->val$dragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PhotoView"

    const-string/jumbo v1, "addViewOnUiThread notify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$11;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8402(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
