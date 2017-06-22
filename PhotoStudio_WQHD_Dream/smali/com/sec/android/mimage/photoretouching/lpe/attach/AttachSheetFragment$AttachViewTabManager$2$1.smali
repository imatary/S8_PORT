.class Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2$1;
.super Ljava/lang/Object;
.source "AttachSheetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->setEnableGoToTop(Z)V

    :cond_0
    return-void
.end method
