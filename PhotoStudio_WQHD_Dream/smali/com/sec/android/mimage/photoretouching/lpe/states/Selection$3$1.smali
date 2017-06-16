.class Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3$1;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideProgress()V

    return-void
.end method
