.class Lcom/sec/samsung/gallery/drawer/GalleryTab$6;
.super Ljava/lang/Object;
.source "GalleryTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/GalleryTab;->removeTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iput p2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->val$position:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$900(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->setTabWidget(Landroid/widget/TabWidget;I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$900(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->invalidate()V

    const-string/jumbo v2, "GalleryTab"

    const-string/jumbo v3, "remove current tab and start time view state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->val$position:I

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "KEY_VIEW_REDRAW"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1800(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1500(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/drawer/StateInfo;

    iget v1, v2, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1900(Lcom/sec/samsung/gallery/drawer/GalleryTab;)[Z

    move-result-object v2

    aput-boolean v5, v2, v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1500(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2002(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)I

    const-string/jumbo v2, "GalleryTab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTab, position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->val$position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", tabIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "GalleryTab"

    const-string/jumbo v3, "remove view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;->val$position:I

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method
