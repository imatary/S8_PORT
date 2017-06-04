.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;
.super Ljava/lang/Object;
.source "FavoriteViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->onViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$4700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$4800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$5100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    # setter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$5002(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;I)I

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$4200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$4300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$4600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    # setter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$4502(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;I)I

    return-void
.end method
