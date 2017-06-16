.class Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;
.super Ljava/lang/Object;
.source "Portrait.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowArcSoftCircle:Z
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2702(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mShowEyeCircles:Z
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2802(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->disablePortraitButtons()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$ReInitPortrait;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
