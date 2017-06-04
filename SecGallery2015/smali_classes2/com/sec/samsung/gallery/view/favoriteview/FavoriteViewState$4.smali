.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$4;
.super Ljava/lang/Object;
.source "FavoriteViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$4;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isInitialActivityLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$4;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startDetailViewInUIThread(IIZ)V
    invoke-static {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$1300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;IIZ)V

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->setInitialActivityLaunch(Z)V

    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 0

    return-void
.end method
