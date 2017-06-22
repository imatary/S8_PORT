.class Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent$1;
.super Ljava/lang/Object;
.source "HistoryEvent.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setPreviewData([III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJobDone(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewId:I
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    const/4 v1, 0x3

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewState:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)I

    return-void
.end method

.method public onJobStarted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    const/4 v1, 0x2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->mPreviewState:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)I

    return-void
.end method
