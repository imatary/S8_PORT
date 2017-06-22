.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;


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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const v5, 0x7f0e0240

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->closeSettingView()V

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isUndoable()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    return v2

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isDrawing:Z
    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1302(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1402(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isDrawing:Z
    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1302(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1402(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1402(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isDrawing:Z
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1302(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mCurMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1402(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x106 -> :sswitch_3
    .end sparse-switch
.end method
