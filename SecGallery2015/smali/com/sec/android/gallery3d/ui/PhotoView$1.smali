.class Lcom/sec/android/gallery3d/ui/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$1;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->onFocusChange(Z)V

    :cond_0
    return-void
.end method
