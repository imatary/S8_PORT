.class Lcom/sec/android/gallery3d/ui/FilmStripView$4;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/FilmStripView;->initializeData(Lcom/sec/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/FilmStripView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$4;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$4;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1302(Lcom/sec/android/gallery3d/ui/FilmStripView;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$4;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1400(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$4;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$100(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$4;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1500(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->getFocusIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$4;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1402(Lcom/sec/android/gallery3d/ui/FilmStripView;Z)Z

    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$4;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$1302(Lcom/sec/android/gallery3d/ui/FilmStripView;Z)Z

    return-void
.end method
