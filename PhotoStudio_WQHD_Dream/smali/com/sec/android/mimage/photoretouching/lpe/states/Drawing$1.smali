.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$1;
.super Landroid/os/Handler;
.source "Drawing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPenLayout:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posX:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPosition(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mEraserLayout:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posX:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->posY:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setPosition(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
