.class Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$3;
.super Ljava/lang/Object;
.source "Tone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mCurrState:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x801

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_0
    return-void
.end method
