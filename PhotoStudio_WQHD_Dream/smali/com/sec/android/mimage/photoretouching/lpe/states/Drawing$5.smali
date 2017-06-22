.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initSpenView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isActionDownInside:Z

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->IsOutsidePageDoc(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    invoke-static {v3, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->closeSettingView()V

    const-string v3, "PEDIT_Drawing"

    const-string v4, "setting view is visible"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_2
    const-string v3, "PEDIT_Drawing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Spen PreTouchListener: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_0
    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;->isActionDownInside:Z

    if-eqz v1, :cond_0

    const-string v3, "PEDIT_Drawing"

    const-string v4, "touch down outside of pagedoc"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;->isActionDownInside:Z

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$5;->isActionDownInside:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
