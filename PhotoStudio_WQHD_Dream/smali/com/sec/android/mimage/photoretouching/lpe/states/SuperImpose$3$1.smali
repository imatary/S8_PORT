.class Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3$1;
.super Ljava/lang/Object;
.source "SuperImpose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamChina()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->drawerShow()V

    :cond_0
    return-void
.end method
