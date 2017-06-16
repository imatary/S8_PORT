.class Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;
.super Ljava/lang/Object;
.source "AttachSheetFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;Landroid/view/View;Landroid/support/v4/view/ViewPager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

.field final synthetic val$this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;->val$this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->setEnableGoToTop(Z)V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;)Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->updateIndicatorPosition(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;)Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->updateIndicatorPosition(IF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;)Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->setCurrentTab(I)V

    return-void
.end method
