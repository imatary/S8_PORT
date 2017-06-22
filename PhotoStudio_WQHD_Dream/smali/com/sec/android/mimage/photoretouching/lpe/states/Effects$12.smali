.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$12;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->loadCache(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrState:I

    const/16 v2, 0x1001

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
