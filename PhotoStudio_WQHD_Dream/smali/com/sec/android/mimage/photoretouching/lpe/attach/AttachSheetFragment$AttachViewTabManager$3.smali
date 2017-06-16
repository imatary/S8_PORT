.class Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;
.super Ljava/lang/Object;
.source "AttachSheetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->selectCameraTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->showTabSpace(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isVisiableHelpText:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mIsFullMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->showHelpCamera()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isVisiableHelpText:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->hideHelpCamera()V

    goto :goto_0
.end method
