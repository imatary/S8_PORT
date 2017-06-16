.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7$1;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsPenSettingViewInited:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$702(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    const/16 v1, 0x10

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->refreshPopupState(IZ)V
    invoke-static {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;IZ)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mIsEraserSettingViewInited:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z

    goto :goto_0
.end method
