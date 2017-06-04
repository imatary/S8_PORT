.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$2;
.super Ljava/lang/Object;
.source "FavoriteViewActionBarForMultiPick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->updateDoneButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const v2, 0x7f12007a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mIsDoneEnabled:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$1000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mIsDoneEnabled:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$1000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    return-void
.end method
