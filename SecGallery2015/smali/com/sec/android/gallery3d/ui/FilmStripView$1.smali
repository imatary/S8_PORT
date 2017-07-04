.class Lcom/sec/android/gallery3d/ui/FilmStripView$1;
.super Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.source "FilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/FilmStripView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaSet;ZLcom/sec/android/gallery3d/app/AlbumReloader;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/FilmStripView;Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$1;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$1;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$000(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/ScrollBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$1;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$100(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$1;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$000(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/ScrollBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->hideScrollBar()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$1;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->invalidate()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
