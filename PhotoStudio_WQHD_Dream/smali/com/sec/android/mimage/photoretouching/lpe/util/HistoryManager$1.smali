.class Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;
.super Ljava/lang/Thread;
.source "HistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->applyHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

.field final synthetic val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

.field final synthetic val$layerId:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->val$layerId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
