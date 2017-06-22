.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$16;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;


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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$16;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(III)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$16;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$16;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->getSpenPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$16;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSettingView:Lcom/sec/android/mimage/photoretouching/spen/SettingView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/spen/SettingView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setSpenPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_0
    return-void
.end method
