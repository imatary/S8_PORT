.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;


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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearAll()V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isClearing:Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isClearing:Z
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2002(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeAllObject()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->update()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenSettingEraserLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->selectPenButton()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
