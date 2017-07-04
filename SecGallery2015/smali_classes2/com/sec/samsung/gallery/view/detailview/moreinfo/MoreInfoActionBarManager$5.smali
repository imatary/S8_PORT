.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;
.super Ljava/lang/Object;
.source "MoreInfoActionBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->refreshEditActionBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "action_bar"

    const-string/jumbo v8, "id"

    const-string/jumbo v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f1200b5

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;->val$visible:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    instance-of v4, v0, Landroid/widget/ActionMenuView;

    if-eqz v4, :cond_2

    check-cast v0, Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f120299

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;->val$visible:Z

    if-eqz v6, :cond_1

    const v5, 0x7f0200a7

    :cond_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v4, 0x8

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;->val$visible:Z

    if-eqz v6, :cond_5

    const v5, 0x7f0200a6

    :cond_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
