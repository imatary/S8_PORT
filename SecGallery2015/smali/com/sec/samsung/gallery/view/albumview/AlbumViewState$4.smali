.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isInitialActivityLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4002(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4102(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IIZ)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4402(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setInitialActivityLaunch(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 0

    return-void
.end method
