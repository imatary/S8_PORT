.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$8;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setNewSPenView()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mParent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e02fd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e0233

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
