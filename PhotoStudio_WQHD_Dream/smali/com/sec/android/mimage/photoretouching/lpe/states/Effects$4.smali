.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x1000

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v0

    if-eq v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrState:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getSubButtonOrderForEffects(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrIndex:I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mCurrEffect:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)I

    move-result v0

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    goto :goto_0
.end method
