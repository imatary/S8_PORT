.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit$3;
.super Ljava/lang/Object;
.source "FavoriteViewActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;->updateButton(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;

.field final synthetic val$toggleImage:Z

.field final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit$3;->val$visible:I

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit$3;->val$toggleImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit$3;->val$visible:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;->setEnableSelectionOnActionBar(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit$3;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit$3;->val$toggleImage:Z

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;->access$900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;Z)V

    return-void
.end method
