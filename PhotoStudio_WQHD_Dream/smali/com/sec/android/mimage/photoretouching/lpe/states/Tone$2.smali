.class Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$2;
.super Ljava/lang/Object;
.source "Tone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->initWhiteBalance(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;I)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mTemperatureSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->mWBTemperature:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Tone;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->setProgress(I)V

    return-void
.end method
