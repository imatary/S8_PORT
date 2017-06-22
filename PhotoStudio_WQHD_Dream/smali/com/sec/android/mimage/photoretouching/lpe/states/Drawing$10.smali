.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$10;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->newSpenListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommit(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$10;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mUndoStarckEmpty:Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshUndoRedoBtnState(Z)V

    return-void
.end method

.method public onRedoable(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Z)V
    .locals 0

    return-void
.end method

.method public onUndoable(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Z)V
    .locals 0

    return-void
.end method
