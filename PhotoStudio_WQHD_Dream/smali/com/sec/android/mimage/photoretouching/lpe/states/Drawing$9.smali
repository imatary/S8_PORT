.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$9;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;


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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$9;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->setColorPickerPosition()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V

    return-void
.end method
