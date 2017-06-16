.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$2;
.super Landroid/os/Handler;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->storeSeekbarLocation()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->reloadTextAndSeekColor()V

    :cond_0
    return-void
.end method
