.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$8;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->onSubState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

.field final synthetic val$stateId:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$8;->val$stateId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$8;->val$stateId:I

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->getEffectTitleNames(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekTitle(Ljava/lang/String;)V

    return-void
.end method
