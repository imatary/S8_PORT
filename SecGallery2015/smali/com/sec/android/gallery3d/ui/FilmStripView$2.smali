.class Lcom/sec/android/gallery3d/ui/FilmStripView$2;
.super Ljava/lang/Object;
.source "FilmStripView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/UserInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/FilmStripView;
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$2;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserDoubleTap()V
    .locals 0

    return-void
.end method

.method public onUserFlingUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$2;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$200(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$2;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$200(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/UserInteractionListener;->onUserFlingUp()V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$2;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$200(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$2;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$200(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    :cond_0
    return-void
.end method

.method public onUserInteractionBegin()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$2;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$200(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$2;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$200(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    :cond_0
    return-void
.end method

.method public onUserInteractionEnd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$2;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$300(Lcom/sec/android/gallery3d/ui/FilmStripView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$2;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$200(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/FilmStripView$2;->this$0:Lcom/sec/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->access$200(Lcom/sec/android/gallery3d/ui/FilmStripView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/UserInteractionListener;->onUserInteractionEnd()V

    :cond_0
    return-void
.end method
