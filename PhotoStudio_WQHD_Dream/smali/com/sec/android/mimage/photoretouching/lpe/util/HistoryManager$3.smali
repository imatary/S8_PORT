.class Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$3;
.super Landroid/os/Handler;
.source "HistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCleaner()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->clean()V

    return-void
.end method
