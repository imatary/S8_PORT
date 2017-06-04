.class Lcom/sec/android/gallery3d/app/GalleryCoverMode$1;
.super Ljava/lang/Object;
.source "GalleryCoverMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/GalleryCoverMode;->showCoverCloseBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mFinishByBtn:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->access$002(Lcom/sec/android/gallery3d/app/GalleryCoverMode;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->setActivityResult(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryCoverMode$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryCoverMode;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->access$100(Lcom/sec/android/gallery3d/app/GalleryCoverMode;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
